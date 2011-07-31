package com.cocoaconf

class SessionChoiceController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [sessionChoiceInstanceList: SessionChoice.list(params), sessionChoiceInstanceTotal: SessionChoice.count()]
    }

    def create = {
        def sessionChoiceInstance = new SessionChoice()
        sessionChoiceInstance.properties = params
        return [sessionChoiceInstance: sessionChoiceInstance]
    }

    def save = {
        def sessionChoiceInstance = new SessionChoice(params)
        if (sessionChoiceInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), sessionChoiceInstance.id])}"
            redirect(action: "show", id: sessionChoiceInstance.id)
        }
        else {
            render(view: "create", model: [sessionChoiceInstance: sessionChoiceInstance])
        }
    }

    def show = {
        def sessionChoiceInstance = SessionChoice.get(params.id)
        if (!sessionChoiceInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), params.id])}"
            redirect(action: "list")
        }
        else {
            [sessionChoiceInstance: sessionChoiceInstance]
        }
    }

    def edit = {
        def sessionChoiceInstance = SessionChoice.get(params.id)
        if (!sessionChoiceInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [sessionChoiceInstance: sessionChoiceInstance]
        }
    }

    def update = {
        def sessionChoiceInstance = SessionChoice.get(params.id)
        if (sessionChoiceInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (sessionChoiceInstance.version > version) {
                    
                    sessionChoiceInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'sessionChoice.label', default: 'SessionChoice')] as Object[], "Another user has updated this SessionChoice while you were editing")
                    render(view: "edit", model: [sessionChoiceInstance: sessionChoiceInstance])
                    return
                }
            }
            sessionChoiceInstance.properties = params
            if (!sessionChoiceInstance.hasErrors() && sessionChoiceInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), sessionChoiceInstance.id])}"
                redirect(action: "show", id: sessionChoiceInstance.id)
            }
            else {
                render(view: "edit", model: [sessionChoiceInstance: sessionChoiceInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def sessionChoiceInstance = SessionChoice.get(params.id)
        if (sessionChoiceInstance) {
            try {
                sessionChoiceInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'sessionChoice.label', default: 'SessionChoice'), params.id])}"
            redirect(action: "list")
        }
    }
}
