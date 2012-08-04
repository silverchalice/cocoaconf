package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class PrizeController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [prizeInstanceList: Prize.list(params), prizeInstanceTotal: Prize.count()]
    }

    def create() {
        [prizeInstance: new Prize(params)]
    }

    def save() {
        def prizeInstance = new Prize(params)
        if (!prizeInstance.save(flush: true)) {
            render(view: "create", model: [prizeInstance: prizeInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'prize.label', default: 'Prize'), prizeInstance.id])
        redirect(action: "show", id: prizeInstance.id)
    }

    def show() {
        def prizeInstance = Prize.get(params.id)
        if (!prizeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prize.label', default: 'Prize'), params.id])
            redirect(action: "list")
            return
        }

        [prizeInstance: prizeInstance]
    }

    def edit() {
        def prizeInstance = Prize.get(params.id)
        if (!prizeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prize.label', default: 'Prize'), params.id])
            redirect(action: "list")
            return
        }

        [prizeInstance: prizeInstance]
    }

    def update() {
        def prizeInstance = Prize.get(params.id)
        if (!prizeInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'prize.label', default: 'Prize'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (prizeInstance.version > version) {
                prizeInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'prize.label', default: 'Prize')] as Object[],
                          "Another user has updated this Prize while you were editing")
                render(view: "edit", model: [prizeInstance: prizeInstance])
                return
            }
        }

        prizeInstance.properties = params

        if (!prizeInstance.save(flush: true)) {
            render(view: "edit", model: [prizeInstance: prizeInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'prize.label', default: 'Prize'), prizeInstance.id])
        redirect(action: "show", id: prizeInstance.id)
    }

    def delete() {
        def prizeInstance = Prize.get(params.id)
        if (!prizeInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'prize.label', default: 'Prize'), params.id])
            redirect(action: "list")
            return
        }

        try {
            prizeInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'prize.label', default: 'Prize'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'prize.label', default: 'Prize'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def prizes = {

        [prizes: Prize.findAllByActive(true)]

    }
}
