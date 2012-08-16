package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class MugShotController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 100, 100)
        [mugShotInstanceList: MugShot.list(params), mugShotInstanceTotal: MugShot.count()]
    }

    def create() {
        [mugShotInstance: new MugShot(params)]
    }

    def save() {
        def mugShotInstance = new MugShot(params)
        def image = request.getFile('image')
        if(!image.empty){
            def webRootDir = servletContext.getRealPath("/")
            def mugDir = new File(webRootDir, "images/mugs")
            mugDir.mkdirs()
            image.transferTo(new File(mugDir, image.originalFilename))
            mugShotInstance.imagePath = "images/mugs/" + image.originalFilename
        }
        if (!mugShotInstance.save(flush: true)) {
            render(view: "create", model: [mugShotInstance: mugShotInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'mugShot.label', default: 'MugShot'), mugShotInstance.id])
        redirect(action: "show", id: mugShotInstance.id)
    }

    def show() {
        def mugShotInstance = MugShot.get(params.id)
        if (!mugShotInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'mugShot.label', default: 'MugShot'), params.id])
            redirect(action: "list")
            return
        }

        [mugShotInstance: mugShotInstance]
    }

    def edit() {
        def mugShotInstance = MugShot.get(params.id)
        if (!mugShotInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mugShot.label', default: 'MugShot'), params.id])
            redirect(action: "list")
            return
        }

        [mugShotInstance: mugShotInstance]
    }

    def update() {
        def mugShotInstance = MugShot.get(params.id)
        if (!mugShotInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'mugShot.label', default: 'MugShot'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (mugShotInstance.version > version) {
                mugShotInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'mugShot.label', default: 'MugShot')] as Object[],
                          "Another user has updated this MugShot while you were editing")
                render(view: "edit", model: [mugShotInstance: mugShotInstance])
                return
            }
        }

        mugShotInstance.properties = params

        if (!mugShotInstance.save(flush: true)) {
            render(view: "edit", model: [mugShotInstance: mugShotInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'mugShot.label', default: 'MugShot'), mugShotInstance.id])
        redirect(action: "show", id: mugShotInstance.id)
    }

    def delete() {
        def mugShotInstance = MugShot.get(params.id)
        if (!mugShotInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'mugShot.label', default: 'MugShot'), params.id])
            redirect(action: "list")
            return
        }

        try {
            mugShotInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'mugShot.label', default: 'MugShot'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'mugShot.label', default: 'MugShot'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
