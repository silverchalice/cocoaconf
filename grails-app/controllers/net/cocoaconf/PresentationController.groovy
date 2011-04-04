package net.cocoaconf

class PresentationController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [presentationInstanceList: Presentation.list(params), presentationInstanceTotal: Presentation.count()]
    }

    def create = {
        def presentationInstance = new Presentation()
        presentationInstance.properties = params
        return [presentationInstance: presentationInstance]
    }

    def save = {
        def presentationInstance = new Presentation(params)
        if (presentationInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'presentation.label', default: 'Presentation'), presentationInstance.id])}"
            redirect(action: "show", id: presentationInstance.id)
        }
        else {
            render(view: "create", model: [presentationInstance: presentationInstance])
        }
    }

    def show = {
        def presentationInstance = Presentation.get(params.id)
        if (!presentationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
            redirect(action: "list")
        }
        else {
            [presentationInstance: presentationInstance]
        }
    }

    def edit = {
        def presentationInstance = Presentation.get(params.id)
        if (!presentationInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [presentationInstance: presentationInstance]
        }
    }

    def update = {
        def presentationInstance = Presentation.get(params.id)
        if (presentationInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (presentationInstance.version > version) {
                    
                    presentationInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'presentation.label', default: 'Presentation')] as Object[], "Another user has updated this Presentation while you were editing")
                    render(view: "edit", model: [presentationInstance: presentationInstance])
                    return
                }
            }
            presentationInstance.properties = params
            if (!presentationInstance.hasErrors() && presentationInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'presentation.label', default: 'Presentation'), presentationInstance.id])}"
                redirect(action: "show", id: presentationInstance.id)
            }
            else {
                render(view: "edit", model: [presentationInstance: presentationInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def presentationInstance = Presentation.get(params.id)
        if (presentationInstance) {
            try {
                presentationInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'presentation.label', default: 'Presentation'), params.id])}"
            redirect(action: "list")
        }
    }
}
