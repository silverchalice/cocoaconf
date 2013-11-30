package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class ClickController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [clickInstanceList: Click.list(params), clickInstanceTotal: Click.count()]
    }

    def create() {
        [clickInstance: new Click(params)]
    }

    def save() {
        def clickInstance = new Click(params)
        if (!clickInstance.save(flush: true)) {
            render(view: "create", model: [clickInstance: clickInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'click.label', default: 'Click'), clickInstance.id])
        redirect(action: "show", id: clickInstance.id)
    }

    def show(Long id) {
        def clickInstance = Click.get(id)
        if (!clickInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'click.label', default: 'Click'), id])
            redirect(action: "list")
            return
        }

        [clickInstance: clickInstance]
    }

    def edit(Long id) {
        def clickInstance = Click.get(id)
        if (!clickInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'click.label', default: 'Click'), id])
            redirect(action: "list")
            return
        }

        [clickInstance: clickInstance]
    }

    def update(Long id, Long version) {
        def clickInstance = Click.get(id)
        if (!clickInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'click.label', default: 'Click'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (clickInstance.version > version) {
                clickInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'click.label', default: 'Click')] as Object[],
                          "Another user has updated this Click while you were editing")
                render(view: "edit", model: [clickInstance: clickInstance])
                return
            }
        }

        clickInstance.properties = params

        if (!clickInstance.save(flush: true)) {
            render(view: "edit", model: [clickInstance: clickInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'click.label', default: 'Click'), clickInstance.id])
        redirect(action: "show", id: clickInstance.id)
    }

    def delete(Long id) {
        def clickInstance = Click.get(id)
        if (!clickInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'click.label', default: 'Click'), id])
            redirect(action: "list")
            return
        }

        try {
            clickInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'click.label', default: 'Click'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'click.label', default: 'Click'), id])
            redirect(action: "show", id: id)
        }
    }
}
