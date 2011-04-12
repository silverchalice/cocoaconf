package com.cocoaconf

class InterestController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [interestInstanceList: Interest.list(params), interestInstanceTotal: Interest.count()]
    }

    def create = {
        def interestInstance = new Interest()
        interestInstance.properties = params
        return [interestInstance: interestInstance]
    }

    def register = {
        def interestInstance = new Interest(params)
        if (interestInstance.save(flush: true)) {
            flash.message = "Thank you! You will be notified when registration opens."
            redirect(controller:"home", action: "announcement")
        }
        else {
            redirect(controller:"home", view: "announcement", model: [interestInstance: interestInstance])
        }
    }

    def save = {
        def interestInstance = new Interest(params)
        if (interestInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'interest.label', default: 'Interest'), interestInstance.id])}"
            redirect(action: "show", id: interestInstance.id)
        }
        else {
            render(view: "create", model: [interestInstance: interestInstance])
        }
    }

    def show = {
        def interestInstance = Interest.get(params.id)
        if (!interestInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'interest.label', default: 'Interest'), params.id])}"
            redirect(action: "list")
        }
        else {
            [interestInstance: interestInstance]
        }
    }

    def edit = {
        def interestInstance = Interest.get(params.id)
        if (!interestInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'interest.label', default: 'Interest'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [interestInstance: interestInstance]
        }
    }

    def update = {
        def interestInstance = Interest.get(params.id)
        if (interestInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (interestInstance.version > version) {
                    
                    interestInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'interest.label', default: 'Interest')] as Object[], "Another user has updated this Interest while you were editing")
                    render(view: "edit", model: [interestInstance: interestInstance])
                    return
                }
            }
            interestInstance.properties = params
            if (!interestInstance.hasErrors() && interestInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'interest.label', default: 'Interest'), interestInstance.id])}"
                redirect(action: "show", id: interestInstance.id)
            }
            else {
                render(view: "edit", model: [interestInstance: interestInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'interest.label', default: 'Interest'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def interestInstance = Interest.get(params.id)
        if (interestInstance) {
            try {
                interestInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'interest.label', default: 'Interest'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'interest.label', default: 'Interest'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'interest.label', default: 'Interest'), params.id])}"
            redirect(action: "list")
        }
    }
}
