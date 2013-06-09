package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class WwdcPhotoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 100, 100)
        [wwdcPhotoInstanceList: WwdcPhoto.list(params), wwdcPhotoInstanceTotal: WwdcPhoto.count()]
    }

    def create() {
        [wwdcPhotoInstance: new WwdcPhoto(params)]
    }

    def save() {
        def wwdcPhotoInstance = new WwdcPhoto(params)
        def image = request.getFile('image')
        if(!image.empty){
            def webRootDir = servletContext.getRealPath("/")
            def wwdcDir = new File(webRootDir, "images/wwdc")
            wwdcDir.mkdirs()
            image.transferTo(new File(wwdcDir, image.originalFilename))
            wwdcPhotoInstance.imagePath = "images/wwdc/" + image.originalFilename
        }
        if (!wwdcPhotoInstance.save(flush: true)) {
            render(view: "create", model: [wwdcPhotoInstance: wwdcPhotoInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), wwdcPhotoInstance.id])
        redirect(action: "show", id: wwdcPhotoInstance.id)
    }

    def show() {
        def wwdcPhotoInstance = WwdcPhoto.get(params.id)
        if (!wwdcPhotoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), params.id])
            redirect(action: "list")
            return
        }

        [wwdcPhotoInstance: wwdcPhotoInstance]
    }

    def edit() {
        def wwdcPhotoInstance = WwdcPhoto.get(params.id)
        if (!wwdcPhotoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), params.id])
            redirect(action: "list")
            return
        }

        [wwdcPhotoInstance: wwdcPhotoInstance]
    }

    def update() {
        def wwdcPhotoInstance = WwdcPhoto.get(params.id)
        if (!wwdcPhotoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (wwdcPhotoInstance.version > version) {
                wwdcPhotoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto')] as Object[],
                          "Another user has updated this WwdcPhoto while you were editing")
                render(view: "edit", model: [wwdcPhotoInstance: wwdcPhotoInstance])
                return
            }
        }

        wwdcPhotoInstance.properties = params

        if (!wwdcPhotoInstance.save(flush: true)) {
            render(view: "edit", model: [wwdcPhotoInstance: wwdcPhotoInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), wwdcPhotoInstance.id])
        redirect(action: "show", id: wwdcPhotoInstance.id)
    }

    def delete() {
        def wwdcPhotoInstance = WwdcPhoto.get(params.id)
        if (!wwdcPhotoInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), params.id])
            redirect(action: "list")
            return
        }

        try {
            wwdcPhotoInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'wwdcPhoto.label', default: 'WwdcPhoto'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
