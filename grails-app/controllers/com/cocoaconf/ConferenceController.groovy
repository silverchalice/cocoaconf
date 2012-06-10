package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException

class ConferenceController {
	
    def springSecurityService
	def scheduleService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def home() {
        println "...and so now we are in the ConferenceController home action..."
        println "...and the params are " + params

        Conference.list().each { 
            println "the id is ${it.id} and the tinyName is ${it.tinyName}"
        }

        def conference = Conference.findByTinyName(params.tinyName)

        if(conference){
            println "so there was a conference. we are supposed to render the view now..."
            render view: "home", model: ["conference": conference] 
        } else {
            println "...and there was no conference. :("
            println "we are going to redirect"
            redirect controller: "home"
        }
    }

   def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        [conferenceList: Conference.list(params), conferenceTotal: Conference.count()]
    }

    def create() {
        [conference: new Conference(params)]
    }

    def save() {
        def conference = new Conference(params)
        if (!conference.save(flush: true)) {
            render(view: "create", model: [conference: conference])
            return
        }

		flash.message = message(code: 'default.created.message', args: [message(code: 'conference.label', default: 'Conference'), conference.id])
        redirect(action: "show", id: conference.id)
    }

    def show() {
        def conference = Conference.get(params.id)
        if (!conference) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        [conference: conference]
    }

    def edit() {
        def conference = Conference.get(params.id)
        if (!conference) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        [conference: conference]
    }

    def update() {
        def conference = Conference.get(params.id)
        if (!conference) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        if (params.version) {
            def version = params.version.toLong()
            if (conference.version > version) {
                conference.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'conference.label', default: 'Conference')] as Object[],
                          "Another user has updated this Conference while you were editing")
                render(view: "edit", model: [conference: conference])
                return
            }
        }

        conference.properties = params

        if (!conference.save(flush: true)) {
            render(view: "edit", model: [conference: conference])
            return
        }

		flash.message = message(code: 'default.updated.message', args: [message(code: 'conference.label', default: 'Conference'), conference.id])
        redirect(action: "show", id: conference.id)
    }

    def delete() {
        def conference = Conference.get(params.id)
        if (!conference) {
			flash.message = message(code: 'default.not.found.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
            return
        }

        try {
            conference.delete(flush: true)
			flash.message = message(code: 'default.deleted.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
			flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'conference.label', default: 'Conference'), params.id])
            redirect(action: "show", id: params.id)
        }
    }

    def schedule = {

        def conf = Conference.findByTinyName(params.tinyName)
        def schedule 
        if (conf){
            schedule = scheduleService.loadScheduleMap(conf)
            println "!! yayz!!!!!1 and the schedule was: " + schedule
            [schedule:schedule, conference:conf]
        } else {
            redirect controller: "home"
        }

    }

    def speakers = {
		params.each{key, val -> println "$key == $val"}
        def conf = Conference.findByTinyName(params.tinyName)
        if(conf){
            println "and its speakers are " + conf.speakers
            [conference:conf, speakerInstanceList: conf.speakers, speakerInstanceTotal: Speaker.count()]
        } else {
            redirect controller: "home"
        }
    }

    def partners(){
	    def conf = Conference.findByTinyName(params.tinyName)
	    if(conf){
			[conference:conf]
		}
		else{
			redirect controller: 'home'
		}
    }

    def sessions = {
        def conf = Conference.findByTinyName(params.tinyName)
        if(conf){
            [conference:conf, sessions: conf.sessionList().sort{ it.presentation.title }]
        } else {
            redirect controller: "home"
        }
    }

    def venue = {
        def conf = Conference.findByTinyName(params.tinyName)
        if(conf){
            [conference:conf]
        } else {
            redirect controller: "home"
        }
    }

    def register = {
        def conf = Conference.findByTinyName(params.tinyName)
        if(conf){
            [conference:conf]
        } else {
            redirect controller: "home"
        }
    }

}
