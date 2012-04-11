package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class ConferenceDayController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [conferenceDayInstanceList: ConferenceDay.list(params), conferenceDayInstanceTotal: ConferenceDay.count()]
    }

    def create() {
        [conferenceDayInstance: new ConferenceDay(params)]
    }

    def save() {
        def conferenceDayInstance = new ConferenceDay(params)
        if (!conferenceDayInstance.save(flush: true)) {
            render(view: "create", model: [conferenceDayInstance: conferenceDayInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), conferenceDayInstance.id])
        redirect(action: "show", id: conferenceDayInstance.id)
    }

    def show() {
        def conferenceDayInstance = ConferenceDay.get(params.id)
        if (!conferenceDayInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), params.id])
            redirect(action: "list")
            return
        }

        [conferenceDayInstance: conferenceDayInstance]
    }

    def edit() {
        def conferenceDayInstance = ConferenceDay.get(params.id)
        if (!conferenceDayInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), params.id])
            redirect(action: "list")
            return
        }

        [conferenceDayInstance: conferenceDayInstance]
    }

    def update() {
        def conferenceDayInstance = ConferenceDay.get(params.id)
        if (!conferenceDayInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (conferenceDayInstance.version > version) {
                conferenceDayInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'conferenceDay.label', default: 'ConferenceDay')] as Object[],
                          "Another user has updated this ConferenceDay while you were editing")
                render(view: "edit", model: [conferenceDayInstance: conferenceDayInstance])
                return
            }
        }

        conferenceDayInstance.properties = params

        if (!conferenceDayInstance.save(flush: true)) {
            render(view: "edit", model: [conferenceDayInstance: conferenceDayInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), conferenceDayInstance.id])
        redirect(action: "show", id: conferenceDayInstance.id)
    }

    def delete() {
        def conferenceDayInstance = ConferenceDay.get(params.id)
        if (!conferenceDayInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), params.id])
            redirect(action: "list")
            return
        }

        try {
            conferenceDayInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'conferenceDay.label', default: 'ConferenceDay'), params.id])
            redirect(action: "show", id: params.id)
        }
    }
}
