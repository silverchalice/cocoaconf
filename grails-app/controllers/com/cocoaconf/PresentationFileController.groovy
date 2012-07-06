package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class PresentationFileController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [presentationFileInstanceList: PresentationFile.list(params), presentationFileInstanceTotal: PresentationFile.count()]
    }

    def create() {
        [presentationFileInstance: new PresentationFile(params)]
    }

    def save() {
        def presentationFileInstance = new PresentationFile(params)
        if (!presentationFileInstance.save(flush: true)) {
            render(view: "create", model: [presentationFileInstance: presentationFileInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), presentationFileInstance.id])
        redirect(action: "show", id: presentationFileInstance.id)
    }

    def show() {
        def presentationFileInstance = PresentationFile.get(params.id)
        if (!presentationFileInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), params.id])
            redirect(action: "list")
            return
        }

        [presentationFileInstance: presentationFileInstance]
    }

    def edit() {
        def presentationFileInstance = PresentationFile.get(params.id)
        if (!presentationFileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), params.id])
            redirect(action: "list")
            return
        }

        [presentationFileInstance: presentationFileInstance]
    }

    def update() {
        def presentationFileInstance = PresentationFile.get(params.id)
        if (!presentationFileInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (presentationFileInstance.version > version) {
                presentationFileInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'presentationFile.label', default: 'PresentationFile')] as Object[],
                          "Another user has updated this PresentationFile while you were editing")
                render(view: "edit", model: [presentationFileInstance: presentationFileInstance])
                return
            }
        }

        presentationFileInstance.properties = params

        if (!presentationFileInstance.save(flush: true)) {
            render(view: "edit", model: [presentationFileInstance: presentationFileInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), presentationFileInstance.id])
        redirect(action: "show", id: presentationFileInstance.id)
    }

    def delete() {
        def presentationFileInstance = PresentationFile.get(params.id)
        if (!presentationFileInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), params.id])
            redirect(action: "list")
            return
        }

        try {
            presentationFileInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'presentationFile.label', default: 'PresentationFile'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
