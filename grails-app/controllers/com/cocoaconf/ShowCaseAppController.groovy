package com.cocoaconf

class ShowCaseAppController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [showCaseAppInstanceList: ShowCaseApp.list(params), showCaseAppInstanceTotal: ShowCaseApp.count()]
    }

    def create = {
        def showCaseAppInstance = new ShowCaseApp()
        showCaseAppInstance.properties = params
        return [showCaseAppInstance: showCaseAppInstance]
    }

    def save = {
        def showCaseAppInstance = new ShowCaseApp(params)
        if (showCaseAppInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), showCaseAppInstance.id])}"
            redirect(action: "show", id: showCaseAppInstance.id)
        }
        else {
            render(view: "create", model: [showCaseAppInstance: showCaseAppInstance])
        }
    }

    def show = {
        def showCaseAppInstance = ShowCaseApp.get(params.id)
        if (!showCaseAppInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), params.id])}"
            redirect(action: "list")
        }
        else {
            [showCaseAppInstance: showCaseAppInstance]
        }
    }

    def edit = {
        def showCaseAppInstance = ShowCaseApp.get(params.id)
        if (!showCaseAppInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [showCaseAppInstance: showCaseAppInstance]
        }
    }

    def update = {
        def showCaseAppInstance = ShowCaseApp.get(params.id)
        if (showCaseAppInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (showCaseAppInstance.version > version) {
                    
                    showCaseAppInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'showCaseApp.label', default: 'ShowCaseApp')] as Object[], "Another user has updated this ShowCaseApp while you were editing")
                    render(view: "edit", model: [showCaseAppInstance: showCaseAppInstance])
                    return
                }
            }
            showCaseAppInstance.properties = params
            if (!showCaseAppInstance.hasErrors() && showCaseAppInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), showCaseAppInstance.id])}"
                redirect(action: "show", id: showCaseAppInstance.id)
            }
            else {
                render(view: "edit", model: [showCaseAppInstance: showCaseAppInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def showCaseAppInstance = ShowCaseApp.get(params.id)
        if (showCaseAppInstance) {
            try {
                showCaseAppInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'showCaseApp.label', default: 'ShowCaseApp'), params.id])}"
            redirect(action: "list")
        }
    }
}
