package com.cocoaconf

import grails.converters.JSON

import javax.servlet.http.HttpServletResponse

import org.codehaus.groovy.grails.plugins.springsecurity.SpringSecurityUtils

import org.apache.commons.lang.RandomStringUtils

import org.springframework.security.authentication.AccountExpiredException
import org.springframework.security.authentication.CredentialsExpiredException
import org.springframework.security.authentication.DisabledException
import org.springframework.security.authentication.LockedException
import org.springframework.security.core.context.SecurityContextHolder as SCH
import org.springframework.security.web.WebAttributes
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter

class LoginController {

    static allowedMethods = [password_changeness: "POST", password_resetness: "POST"]

	/**
	 * Dependency injection for the authenticationTrustResolver.
	 */
	def authenticationTrustResolver

	/**
	 * Dependency injection for the springSecurityService.
	 */
	def springSecurityService

	/**
	 * Also other services.
	 */
    def mailService

	/**
	 * Default action; redirects to 'defaultTargetUrl' if logged in, /login/auth otherwise.
	 */
	def index = {
		if (springSecurityService.isLoggedIn()) {
			redirect uri: "/"
		}
		else {
			redirect action: auth, params: params
		}
	}

	/**
	 * Show the login page.
	 */
	def auth = {

		def config = SpringSecurityUtils.securityConfig

		if (springSecurityService.isLoggedIn()) {
			redirect uri: config.successHandler.defaultTargetUrl
			return
		}

		String view = 'auth'
		String postUrl = "${request.contextPath}${config.apf.filterProcessesUrl}"
		render view: view, model: [postUrl: postUrl,
		                           rememberMeParameter: config.rememberMe.parameter]
	}

	/**
	 * The redirect action for Ajax requests. 
	 */
	def authAjax = {
		response.setHeader 'Location', SpringSecurityUtils.securityConfig.auth.ajaxLoginFormUrl
		response.sendError HttpServletResponse.SC_UNAUTHORIZED
	}

	/**
	 * Show denied page.
	 */
	def denied = {
		if (springSecurityService.isLoggedIn() &&
				authenticationTrustResolver.isRememberMe(SCH.context?.authentication)) {
			// have cookie but the page is guarded with IS_AUTHENTICATED_FULLY
			redirect action: full, params: params
		}
	}

	/**
	 * Login page for users with a remember-me cookie but accessing a IS_AUTHENTICATED_FULLY page.
	 */
	def full = {
		def config = SpringSecurityUtils.securityConfig
		render view: 'auth', params: params,
			model: [hasCookie: authenticationTrustResolver.isRememberMe(SCH.context?.authentication),
			        postUrl: "${request.contextPath}${config.apf.filterProcessesUrl}"]
	}

	/**
	 * Callback after a failed login. Redirects to the auth page with a warning message.
	 */
	def authfail = {
		def username = session[UsernamePasswordAuthenticationFilter.SPRING_SECURITY_LAST_USERNAME_KEY]
		String msg = ''
		def exception = session[WebAttributes.AUTHENTICATION_EXCEPTION]
		if (exception) {
			if (exception instanceof AccountExpiredException) {
                println "account expired"
				msg = SpringSecurityUtils.securityConfig.errors.login.expired
			}
			else if (exception instanceof CredentialsExpiredException) {
                println "credentials expired"
				msg = SpringSecurityUtils.securityConfig.errors.login.passwordExpired
			}
			else if (exception instanceof DisabledException) {
                println "disabled"
				msg = SpringSecurityUtils.securityConfig.errors.login.disabled
			}
			else if (exception instanceof LockedException) {
                println "locked"
				msg = SpringSecurityUtils.securityConfig.errors.login.locked
			}
			else {
				msg = SpringSecurityUtils.securityConfig.errors.login.fail
			}
		}

		if (springSecurityService.isAjax(request)) {
			render([error: msg] as JSON)
		}
		else {
			flash.message = msg
			redirect action: auth, params: params
		}
	}

	/**
	 * The Ajax success redirect url.
	 */
	def ajaxSuccess = {
		render([success: true, username: springSecurityService.authentication.name] as JSON)
	}

	/**
	 * The Ajax denied redirect url.
	 */
	def ajaxDenied = {
		render([error: 'access denied'] as JSON)
	}

    def password_forgettification = {}

    def password_resetness = {
        def user = User.findByEmail(params.email)
        if(user){
            def password = org.apache.commons.lang.RandomStringUtils.random(17, true, true)
            user.password = springSecurityService.encodePassword(password)
            user.temporaryPassword = true
            user.save()
            mailService.sendMail {
                to params.email
                subject "Your CocoaConf Password Has Been Reset"
                body(view:"/login/password_reset", 
                model:[user:user, password: password])
            }
            println "we sented the mail!!1!!!1!"
        }
        flash.message = "Your password has been reset. Please check your inbox."
        redirect action: 'auth'
    }

    def change_password = {}

    def password_changeness = {
        def user = User.get(springSecurityService.currentUser.id)
        String message = null
        if(!params.currentPassword){
            message = "Please enter your current password."
        } else if (params.currentPassword && springSecurityService.encodePassword(params.currentPassword) != user.password) {
            message = "You did not enter your current password correctly. Please try again."
        } else if (!params.newPassword){
            message = "Please enter a new password."
        } else if (params.newPassword && params.newPassword != params.confirmPassword) {
            message = "New passwords did not match. Please try again."
        } else if (springSecurityService.encodePassword(params.currentPassword) == user.password &&
                   params.newPassword == params.confirmPassword) {
            user.password = springSecurityService.encodePassword(params.newPassword)
            user.temporaryPassword = false
            user.save()
        }

        if(message){
            flash.message = message
            redirect action: "change_password"
        } else {
            redirect action: "password_change"
        }
    }

    def password_change = {}

}
