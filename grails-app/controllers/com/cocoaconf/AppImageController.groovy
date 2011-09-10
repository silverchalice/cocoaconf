package com.cocoaconf

class AppImageController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [appImageInstanceList: AppImage.list(params), appImageInstanceTotal: AppImage.count()]
    }

    def create = {
        def appImageInstance = new AppImage()
        appImageInstance.properties = params
        return [appImageInstance: appImageInstance]
    }

    def save = {
        def appImageInstance = new AppImage(params)
        if (appImageInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'appImage.label', default: 'AppImage'), appImageInstance.id])}"
            redirect(action: "show", id: appImageInstance.id)
        }
        else {
            render(view: "create", model: [appImageInstance: appImageInstance])
        }
    }

    def show = {
        def appImageInstance = AppImage.get(params.id)
        if (!appImageInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'appImage.label', default: 'AppImage'), params.id])}"
            redirect(action: "list")
        }
        else {
            [appImageInstance: appImageInstance]
        }
    }

    def edit = {
        def appImageInstance = AppImage.get(params.id)
        if (!appImageInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'appImage.label', default: 'AppImage'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [appImageInstance: appImageInstance]
        }
    }

    def update = {
        def appImageInstance = AppImage.get(params.id)
        if (appImageInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (appImageInstance.version > version) {
                    
                    appImageInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'appImage.label', default: 'AppImage')] as Object[], "Another user has updated this AppImage while you were editing")
                    render(view: "edit", model: [appImageInstance: appImageInstance])
                    return
                }
            }
            appImageInstance.properties = params
            if (!appImageInstance.hasErrors() && appImageInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'appImage.label', default: 'AppImage'), appImageInstance.id])}"
                redirect(action: "show", id: appImageInstance.id)
            }
            else {
                render(view: "edit", model: [appImageInstance: appImageInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'appImage.label', default: 'AppImage'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def appImageInstance = AppImage.get(params.id)
        if (appImageInstance) {
            try {
                appImageInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'appImage.label', default: 'AppImage'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'appImage.label', default: 'AppImage'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'appImage.label', default: 'AppImage'), params.id])}"
            redirect(action: "list")
        }
    }
}
