package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class SessionController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sessionInstanceList: Session.list(params), sessionInstanceTotal: Session.count()]
    }

    def create() {
        [sessionInstance: new Session(params)]
    }

    def save() {
        def sessionInstance = new Session(params)
        if (!sessionInstance.save(flush: true)) {
            render(view: "create", model: [sessionInstance: sessionInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'session.label', default: 'Session'), sessionInstance.id])
        redirect(action: "show", id: sessionInstance.id)
    }

    def show() {
        def sessionInstance = Session.get(params.id)
        if (!sessionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])
            redirect(action: "list")
            return
        }

        [sessionInstance: sessionInstance]
    }

    def edit() {
        def sessionInstance = Session.get(params.id)
        if (!sessionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])
            redirect(action: "list")
            return
        }

        [sessionInstance: sessionInstance]
    }

    def update() {
        def sessionInstance = Session.get(params.id)
        if (!sessionInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (sessionInstance.version > version) {
                sessionInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'session.label', default: 'Session')] as Object[],
                          "Another user has updated this Session while you were editing")
                render(view: "edit", model: [sessionInstance: sessionInstance])
                return
            }
        }

        sessionInstance.properties = params

        if (!sessionInstance.save(flush: true)) {
            render(view: "edit", model: [sessionInstance: sessionInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'session.label', default: 'Session'), sessionInstance.id])
        redirect(action: "show", id: sessionInstance.id)
    }

    def delete() {
        def sessionInstance = Session.get(params.id)
        if (!sessionInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'session.label', default: 'Session'), params.id])
            redirect(action: "list")
            return
        }

        try {
            sessionInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'session.label', default: 'Session'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'session.label', default: 'Session'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def sessions = {
       [presentationInstanceList: Presentation.findAllByCurrent(true , [sort:"speaker"]), presentationInstanceTotal: Presentation.findAllByCurrent(true).size()]
    }

    def details = {
        println "\n\n\nin SessionController details action with params $params\n\n\n"
        if(!params.id?.isLong()){
            println "id in Session details action was not Long (${params.id}). redirecting"
            redirect action: "list"
            return
        }
        def presentationInstance = Presentation.get(params.id)
        if (!presentationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
            redirect(action: "sessions")
        }
        else {

            def slides = null
            def name = presentationInstance.slidesPath
            [presentationInstance: presentationInstance]

        }
    }

}

