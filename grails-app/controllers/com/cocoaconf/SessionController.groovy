package com.cocoaconf

import org.codehaus.groovy.grails.commons.ConfigurationHolder

class SessionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]
    def config = ConfigurationHolder.config

    def index = {
        redirect(action: "list", params: params)
    }

    def sessions = {
       [presentationInstanceList: Presentation.list(), presentationInstanceTotal: Presentation.count()]
    }

    def list = {
	    def conferenceInstance = Conference.findByTinyName(params.tinyName)
	    if(!conferenceInstance){
            redirect(uri:'/')
		} else {
            params.max = Math.min(params.max ? params.int('max') : 10, 100)
            [sessionInstanceList: Session.list(params), sessionInstanceTotal: Session.count()]
		}
    }

    def create = {
        def sessionInstance = new Session()
        sessionInstance.properties = params
        if(params.conferenceId){
	        def conference = Conference.get(params.conferenceId)
	        conference.addToSessions(sessionInstance)
	        conference.save()
	    }
        return [sessionInstance: sessionInstance]
    }

    def save = {
        def sessionInstance = new Session(params)
        if (sessionInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'session.label', default: 'Session'), sessionInstance.id])}"
            redirect(action: "show", id: sessionInstance.id)
        }
        else {
            render(view: "create", model: [sessionInstance: sessionInstance])
        }
    }

    def show = {
        def sessionInstance = Session.get(params.id)
        if (!sessionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])}"
            redirect(action: "list")
        }
        else {
            [sessionInstance: sessionInstance]
        }
    }

    def edit = {
        def sessionInstance = Session.get(params.id)
        if (!sessionInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [sessionInstance: sessionInstance]
        }
    }

    def update = {
        def sessionInstance = Session.get(params.id)
        if (sessionInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (sessionInstance.version > version) {
                    
                    sessionInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'session.label', default: 'Session')] as Object[], "Another user has updated this Session while you were editing")
                    render(view: "edit", model: [sessionInstance: sessionInstance])
                    return
                }
            }
            sessionInstance.properties = params
            if (!sessionInstance.hasErrors() && sessionInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'session.label', default: 'Session'), sessionInstance.id])}"
                redirect(action: "show", id: sessionInstance.id)
            }
            else {
                render(view: "edit", model: [sessionInstance: sessionInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def sessionInstance = Session.get(params.id)
        if (sessionInstance) {
            try {
                sessionInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'session.label', default: 'Session'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'session.label', default: 'Session'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])}"
            redirect(action: "list")
        }
    }
    def details = {
        def presentationInstance = Presentation.get(params.id)
        if (!presentationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
            redirect(action: "sessions")
        }
        else {

            def slides = null
            def name = presentationInstance.title.toLowerCase().replace(" ", "_") + ".zip"
            println name

            File slideDownload = new File(config.slideDirectory + name)
            if(slideDownload.exists()) {
                slides = name
            }

            [presentationInstance: presentationInstance, slides: slides]
        }
    }

}
