package com.cocoaconf

import org.springframework.security.core.context.SecurityContextHolder as SCH

class UserController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def springSecurityService

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [userInstanceList: User.list(params), userInstanceTotal: User.count()]
    }

    def create = {
        def userInstance = new User()
        userInstance.properties = params
        return [userInstance: userInstance]
    }

    def pickSessions = {
        println "Entering UserController:pickSessions..."
        println params
        
        def user = User.findByUsername(springSecurityService.principal.username)
        if (!user.choice){
            
            println "saving user choice..."
            user.choice = new SessionChoice(params)
        }
        else {
            println "saving user choice..."
            user.choice.properties = params

            user.choice.session01 = params.session01 ? true : false
            user.choice.session02 = params.session02 ? true : false
            user.choice.session03 = params.session03 ? true : false
            user.choice.session04 = params.session04 ? true : false
            user.choice.session05 = params.session05 ? true : false
            user.choice.session06 = params.session06 ? true : false
            user.choice.session07 = params.session07 ? true : false
            user.choice.session08 = params.session08 ? true : false
            user.choice.session09 = params.session09 ? true : false
            user.choice.session10 = params.session10 ? true : false
            user.choice.session11 = params.session11 ? true : false
            user.choice.session12 = params.session12 ? true : false
            user.choice.session13 = params.session13 ? true : false
            user.choice.session14 = params.session14 ? true : false
            user.choice.session15 = params.session15 ? true : false
            user.choice.session16 = params.session16 ? true : false
            user.choice.session17 = params.session17 ? true : false
            user.choice.session18 = params.session18 ? true : false
            user.choice.session19 = params.session19 ? true : false
            user.choice.session20 = params.session20 ? true : false
            user.choice.session21 = params.session21 ? true : false
            user.choice.session22 = params.session22 ? true : false
            user.choice.session23 = params.session23 ? true : false
            user.choice.session24 = params.session24 ? true : false
            user.choice.session25 = params.session25 ? true : false
            user.choice.session26 = params.session26 ? true : false
            user.choice.session27 = params.session27 ? true : false
            user.choice.session28 = params.session28 ? true : false
            user.choice.session29 = params.session29 ? true : false
            user.choice.session30 = params.session30 ? true : false


        }
        if (!user.save()){
            user.errors.allErrors.each{println it}
        }
        flash.message = "Thank you for your help!"
        redirect(controller:'home', action:'schedule')
    }
    
    def importUsers = {
        if (User.findByUsername('lliu@oanda.com')){
            render "Import already run."
            return
        }
        def file = [
        "Moser          Steve       service@stevemoser.org                     ",
        "Johnson        Nick        nickicle@gmail.com                     ",
        "Stuart         Mark        stuarmark@gmail.com                        ",
        "Ivers          Doug        doug.ivers@rolemodelsoftware.com           ",
        "Stough         Abbie       abbie@appsolutegenius.com                  ",
        "Hope           Erik        erikjhope@gmail.com                        ",
        "Beaudoin       Jacob       dxjacob@gmail.com                          ",
        "Evans          Rick        javaswinger@yahoo.com                      ",
        "Sebeny         Stephen     ssebeny@neo.rr.com                         ",
        "Crisp          Greg        greg@zo-be.com                             ",
        "Sebeny         Carl        csebeny@neo.rr.com                         ",
        "Edwards        Andrew      andrew.edwards.dev@me.com              ",
        "Liu            Lu          lliu@oanda.com                         ",
        "Shepherd       Carol       carol@zo-be.com                            ",
        "Mourant        Ronald      mourant@gmail.com                      ",
        "moore          Steve       Steve.moore@mac.com                        ",
        "Fry            Mitch       m.fry@techsmith.com                    ",
        "Foster         Steve       foster@flightblog.org                      ",
        "Anderson       Josh        janderson@stepleaderdigital.com            ",
        "Miller         Christian   christian@pariahware.com                   ",
        "Tang           Jonathan    jtang@captechconsulting.com                ",
        "Weller         Trish       trish@mundue.com                           ",
        "Conigliaro     Sal         sconig@gmail.com                           ",
        "Bernard        Lismond     lbernard@stepleaderdigital.com         ",
        "Oldis          David       doldis@stepleaderdigital.com               ",
        "Bradley        Paul        pbradley@stepleaderdigital.com         ",
        "Turner         John        john@assistronics.com                      ",
        "Bowers         Jess        jbow912@me.com                             ",
        "kendall        rachel      madEthelFlint@gmail.com                ",
        "Martel         Matt        matt@mundue.com                            ",
        "Kottu          Rajesh      rkottu@stepleaderdigital.com               ",
        "Dakessian      Paul        paulsbusinessemail@yahoo.com               ",
        "Stroh          Eric        estroh@captechconsulting.com               ",
        "Cipollina      Nicholas    ncipollina@gmail.com                       ",
        "Ricketts       Eric        ewricketts@me.com                          ",
        "Sipe           Steve       sesipe@earthlink.net                       ",
        "Norman         Dustin      dustin.norman@gmail.com                    ",
        "Usiyan         Thompson    griotspeak@gmail.com                       ",
        "Marks          Adam        marksfamily@gmail.com                      ",
        "Zobkiw         Joe         zobkiw@gmail.com                           ",
        "Lange          Dan         dlange@cardinalsolutions.com               ",
        "Morgan         Scott       smorgan@cardinalsolutions.com              ",
        "Kennedy        Matt        mkennedy@fourclouds.com                ",
        "Norgren        Mark        m@marknorgren.com                      ",
        "Di Lorenzo     Christian   rcdilorenzo@me.com                         ",
        "Poolos         Ryan        jbird@superduperinc.com                ",
        "Lyerly         Jay         jayl@sonicbunny.org                        ",
        "Maxim          Ben         bmaxim@msufcu.org                          ",
        "Wismar         Andy        wismar@gmail.com                           ",
        "McFarling      Matthew     matthew.mcfarling@gmail.com                ",
        "Hnat           Brian       brian.hnat@tryonsolutions.com              ",
        "Hayes          Keefe       Keefe.Hayes@sas.com                        ",
        "Strenglein     Ralph       RStrenglein@gmail.com                      ",
        "Graham         Dustin      dustin.graham@railinc.com                  ",
        "Webber         Abe         jbird@superduperinc.com                    ",
        "Platz          Steve       steve_platz@lord.com                       ",
        "Owen           Josh        josh.owen@tryonsolutions.com               ",
        "Beccio         Paul        pjb54@georgetown.edu                       "        
        ]

        
        def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE')
        def records = []
        file.each{line ->
            def data = [:]
            data.lastName = line[0..14].trim()
            data.firstName = line[15..26].trim()
            data.email = line[27..63].trim()
            data.username = line[27..63].trim()
            data.enabled = true
            data.accountExpired = false
            data.accountLocked = false
            data.passwordExpired = false
            def user = new User(data)
            user.password = springSecurityService.encodePassword("cocoaconf")
           if (!user.save())
                user.errors.allErrors.each{println it}
            else
                UserRole.create user, attendeeRole
        }
        render "There are now ${User.count()} users!"
    }
    
    def resetTaha = {
        def user = User.get(192)
        user.password = springSecurityService.encodePassword("cocoaconf")
        user.save()
        render "Done!"
    }

    def changePassword = {  
    }
    
    def savePassword = {
        def user = User.findByUsername(springSecurityService.principal.username)
        if (springSecurityService.encodePassword(params.oldpassword) == user.password){
            if (params.password == params.password2){
                user.password = springSecurityService.encodePassword(params.password)
                if (user.save()){
                    SCH.clearContext()
                    flash.message = 'Your password has been changed.  Please login with new password.'
                    redirect(controller:'login', action:'auth')
                }
                else{
                    println "ERROR saving password change for ${user?.username}!!!"
                    user.errors.allErrors.each{println it}
                    redirect(controller:'home', action:'announcement')
                }
            }
            else{
                flash.message = "New passwords do not match"
                render(view:'changePassword')
            }
        }
        else{
            flash.message = "Current password is incorrect."
            render(view:'changePassword')
        }
    }
    
    def save = {
        params.password = springSecurityService.encodePassword("cocoaconf")
        def userInstance = new User(params)
        def attendeeRole = Role.findByAuthority('ROLE_ATTENDEE')
        if (userInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
            UserRole.create userInstance, attendeeRole
            redirect(action: "show", id: userInstance.id)
        }
        else {
            render(view: "create", model: [userInstance: userInstance])
        }
    }

    def show = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            [userInstance: userInstance]
        }
    }

    def edit = {
        def userInstance = User.get(params.id)
        if (!userInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [userInstance: userInstance]
        }
    }

    def update = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (userInstance.version > version) {
                    
                    userInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'user.label', default: 'User')] as Object[], "Another user has updated this User while you were editing")
                    render(view: "edit", model: [userInstance: userInstance])
                    return
                }
            }
            userInstance.properties = params
            if (!userInstance.hasErrors() && userInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'user.label', default: 'User'), userInstance.id])}"
                redirect(action: "show", id: userInstance.id)
            }
            else {
                render(view: "edit", model: [userInstance: userInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def userInstance = User.get(params.id)
        if (userInstance) {
            try {
                userInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'user.label', default: 'User'), params.id])}"
            redirect(action: "list")
        }
    }
}
