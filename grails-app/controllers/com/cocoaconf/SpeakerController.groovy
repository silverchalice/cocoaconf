package com.cocoaconf


class SpeakerController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [speakerInstanceList: Speaker.list(params), speakerInstanceTotal: Speaker.count()]
    }

    def speakers = {
        [speakerInstanceList: Speaker.list(), speakerInstanceTotal: Speaker.count()]
    }

    def create = {
        def speakerInstance = new Speaker()
        speakerInstance.properties = params
        return [speakerInstance: speakerInstance]
    }

    def save = {
        def speakerInstance = new Speaker(params)
		def image = request.getFile('image')
        if(!image.empty){
            def webRootDir = servletContext.getRealPath("/")
            def speakerDir = new File(webRootDir, "images/speaker/${speakerInstance.firstName.toLowerCase().replaceAll(" ", "-")}-${speakerInstance.lastName.toLowerCase().replaceAll(" ", "-")}")
            speakerDir.mkdirs()
            image.transferTo( new File(speakerDir, image.originalFilename))
            speakerInstance.imagePath = "images/speaker/" + speakerInstance.firstName.toLowerCase().replaceAll(" ", "-") + "-" + speakerInstance.lastName.toLowerCase().replaceAll(" ", "-") + "/" + image.originalFilename // don't look too closely
		}
        if (speakerInstance.save(flush: true)) {
            flash.message = "${message(code: 'default.created.message', args: [message(code: 'speaker.label', default: 'Speaker'), speakerInstance.id])}"
            redirect(action: "show", id: speakerInstance.id)
        }
        else {
            render(view: "create", model: [speakerInstance: speakerInstance])
        }
    }

    def show = {
        def speakerInstance = Speaker.get(params.id)
        if (!speakerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
            redirect(action: "list")
        }
        else {
            [speakerInstance: speakerInstance]
        }
    }

    def viewDetails = {
        def speakerInstance = Speaker.get(params.id)
        if (!speakerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
            redirect(action: "speakers")
        }
        else {
            [speaker: speakerInstance]
        }
    }

    def edit = {
        def speakerInstance = Speaker.get(params.id)
        if (!speakerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
            redirect(action: "list")
        }
        else {
            return [speakerInstance: speakerInstance]
        }
    }

    def update = {
        def speakerInstance = Speaker.get(params.id)
        if (speakerInstance) {
            if (params.version) {
                def version = params.version.toLong()
                if (speakerInstance.version > version) {
                    
                    speakerInstance.errors.rejectValue("version", "default.optimistic.locking.failure", [message(code: 'speaker.label', default: 'Speaker')] as Object[], "Another user has updated this Speaker while you were editing")
                    render(view: "edit", model: [speakerInstance: speakerInstance])
                    return
                }
            }
            speakerInstance.properties = params
            def image = request.getFile('image')
            if(!image.empty){
                def webRootDir = servletContext.getRealPath("/")
                def speakerDir = new File(webRootDir, "images/speaker/${speakerInstance.firstName.toLowerCase().replaceAll(" ", "-")}-${speakerInstance.lastName.toLowerCase().replaceAll(" ", "-")}")
                speakerDir.mkdirs()
                image.transferTo( new File(speakerDir, image.originalFilename))
                speakerInstance.imagePath = "images/speaker/" + speakerInstance.firstName.toLowerCase().replaceAll(" ", "-") + "-" + speakerInstance.lastName.toLowerCase().replaceAll(" ", "-") + "/" + image.originalFilename // don't look too closely
            }


            if (!speakerInstance.hasErrors() && speakerInstance.save(flush: true)) {
                flash.message = "${message(code: 'default.updated.message', args: [message(code: 'speaker.label', default: 'Speaker'), speakerInstance.id])}"
                redirect(action: "show", id: speakerInstance.id)
            }
            else {
                render(view: "edit", model: [speakerInstance: speakerInstance])
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
            redirect(action: "list")
        }
    }

    def delete = {
        def speakerInstance = Speaker.get(params.id)
        if (speakerInstance) {
            try {
                speakerInstance.delete(flush: true)
                flash.message = "${message(code: 'default.deleted.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
                redirect(action: "list")
            }
            catch (org.springframework.dao.DataIntegrityViolationException e) {
                flash.message = "${message(code: 'default.not.deleted.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
                redirect(action: "show", id: params.id)
            }
        }
        else {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
            redirect(action: "list")
        }
    }
}
