package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class ConferenceController {
	
	def scheduleService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [conferenceInstanceList: Conference.list(params), conferenceInstanceTotal: Conference.count()]
    }

    def create() {
        [conferenceInstance: new Conference(params)]
    }

    def save() {
        def conferenceInstance = new Conference(params)
        if (!conferenceInstance.save(flush: true)) {
            render(view: "create", model: [conferenceInstance: conferenceInstance])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'conference.label', default: 'Conference'), conferenceInstance.id])
        redirect(action: "show", id: conferenceInstance.id)
    }

    def show() {
        def conferenceInstance = Conference.get(params.id)
        if (!conferenceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        [conferenceInstance: conferenceInstance]
    }

    def edit() {
        def conferenceInstance = Conference.get(params.id)
        if (!conferenceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        [conferenceInstance: conferenceInstance]
    }

    def update() {
        def conferenceInstance = Conference.get(params.id)
        if (!conferenceInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (conferenceInstance.version > version) {
                conferenceInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'conference.label', default: 'Conference')] as Object[],
                          "Another user has updated this Conference while you were editing")
                render(view: "edit", model: [conferenceInstance: conferenceInstance])
                return
            }
        }

        conferenceInstance.properties = params

        if (!conferenceInstance.save(flush: true)) {
            render(view: "edit", model: [conferenceInstance: conferenceInstance])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'conference.label', default: 'Conference'), conferenceInstance.id])
        redirect(action: "show", id: conferenceInstance.id)
    }

    def delete() {
        def conferenceInstance = Conference.get(params.id)
        if (!conferenceInstance) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        try {
            conferenceInstance.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def schedule = {
	    def conf = Conference.get(params.id)
	    def schedule 
	    if (conf){
		    schedule = scheduleService.loadScheduleMap(conf)
		    [schedule:schedule, conference:conf]
	    }
	    else{render "No conference selected."}
    }
}
