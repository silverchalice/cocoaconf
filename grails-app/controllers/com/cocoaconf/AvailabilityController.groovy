package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class AvailabilityController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [availabilityInstanceList: Availability.list(params), availabilityInstanceTotal: Availability.count()]
    }

    def create() {
        [availabilityInstance: new Availability(params)]
    }

    def save() {
        //numberOfTalks isn't nullable, but might come in null
        params.numberOfTalks = params.numberOfTalks ?: 0
        def availabilityInstance = new Availability(params)
        if (!availabilityInstance.save(flush: true)) {
            render(view: "create", model: [availabilityInstance: availabilityInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'availability.label', default: 'Availability'), availabilityInstance.id])
        redirect(action: "show", id: availabilityInstance.id)
    }

    def show(Long id) {
        def availabilityInstance = Availability.get(id)
        if (!availabilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'availability.label', default: 'Availability'), id])
            redirect(action: "list")
            return
        }

        [availabilityInstance: availabilityInstance]
    }

    def edit(Long id) {
        def availabilityInstance = Availability.get(id)
        if (!availabilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'availability.label', default: 'Availability'), id])
            redirect(action: "list")
            return
        }

        [availabilityInstance: availabilityInstance]
    }

    def update(Long id, Long version) {
        def availabilityInstance = Availability.get(id)
        if (!availabilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'availability.label', default: 'Availability'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (availabilityInstance.version > version) {
                availabilityInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'availability.label', default: 'Availability')] as Object[],
                          "Another user has updated this Availability while you were editing")
                render(view: "edit", model: [availabilityInstance: availabilityInstance])
                return
            }
        }

        availabilityInstance.properties = params

        if (!availabilityInstance.save(flush: true)) {
            render(view: "edit", model: [availabilityInstance: availabilityInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'availability.label', default: 'Availability'), availabilityInstance.id])
        redirect(action: "show", id: availabilityInstance.id)
    }

    def delete(Long id) {
        def availabilityInstance = Availability.get(id)
        if (!availabilityInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'availability.label', default: 'Availability'), id])
            redirect(action: "list")
            return
        }

        try {
            availabilityInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'availability.label', default: 'Availability'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'availability.label', default: 'Availability'), id])
            redirect(action: "show", id: id)
        }
    }
}
