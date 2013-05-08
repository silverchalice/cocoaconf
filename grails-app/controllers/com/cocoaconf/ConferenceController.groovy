package com.cocoaconf

import org.springframework.dao.DataIntegrityViolationException
import com.cocoaconf.Conference

class ConferenceController {
	
    def springSecurityService
	def scheduleService
	def slideService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def home() {
        def conference = Conference.findByTinyName(params.tinyName)

        if(conference){

            def blogLinks = BlogLink.findAllByEvent(conference)

            if(conference.tinyName == "alt-2013"){
                redirect(controller: 'post', params: [slug: 'alt-2013-canceled'])
            } else {
                render view: "home", model: ["conference": conference]
            }

        } else redirect controller: "home"
    }

   def list() {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        params.sort = "startDate"
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
        def conf = null
        if(params.tinyName){
            if(Conference.findByTinyName(params.tinyName)){
                conf = Conference.findByTinyName(params.tinyName)
            }
        } else {
            conf = Conference.get(params.id)
        }
        def user
        if (springSecurityService.isLoggedIn()){ 
            user = User.findByUsername(springSecurityService.principal.username)
        }
        def schedule 
        if (conf){
            schedule = scheduleService.loadScheduleMap(conf)
           // println "!! yayz!!!!!1 and the schedule was: " + schedule
            [schedule:schedule, conference:conf, tinyName:params.tinyName, choice:user?.choice, registered: user?.conferences.collect { it.id }.contains(conf.id) ? true : false]
        } else {
            redirect controller: "home"
        }

    }

    def speakers = {
//		params.each{key, val -> println "$key == $val"}
        def conf = Conference.findByTinyName(params.tinyName)
        if(conf){
//            println "and its speakers are " + conf.speakers
            [conference:conf, speakerInstanceList: conf.speakers, speakerInstanceTotal: Speaker.count()]
        } else {
            redirect controller: "home"
        }
    }

    def prizes = {
		params.each{key, val -> println "$key == $val"}
        def conf = Conference.findByTinyName(params.tinyName)
        if(conf){
            println "and its prizes are " + conf.prizes
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

    def partners = {
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

    def speakerDetails = {
//	    params.each{key, val -> println "$key == $val"}
	    def conf = Conference.get(params.confId)
	    def speaker = Speaker.get(params.id)
	    def speakerPresentations = conf?.sessions?.findAll{it?.presentation?.speaker?.id == speaker?.id}.collect{it?.presentation}
	    def feedEntries = FeedEntry.findAllBySpeakerId(speaker?.id, [max:3, sort:'published', order:'desc'])
//	    speakerPresentations.each{println it}
	    if (conf && speaker){
		    return[conference:conf, speaker:speaker, 
		           speakerPresentations:speakerPresentations,
		           feedEntries: feedEntries]
	    }	 
	    else {
	        redirect controller: "home"
	    }
    }

    def sessionDetails = {
	    def conf
	    def presentation
	    if(params.tinyName){
		    conf = Conference.findByTinyName(params.tinyName)
		    presentation = Presentation.findBySlug(params.slug)
	    }
	    else{
	        conf = Conference.get(params.confId)
	        presentation = Presentation.get(params.id)
	    }
	    if (conf && presentation){
		    return[conference:conf, presentation:presentation]
	    }	 
	    else {
	        redirect controller: "home"
	    }
    }

    def slides = {
//	    println "in slides action"
	  //  params.each{key, val -> println "$key == $val"}
        def conf = Conference.findByTinyName(params.tinyName)
        if(conf){
            def slideMap = slideService.loadSlides(conf)
            if (!slideMap){
				redirect controller: "home"
				return
			}
            return [conference:conf, slideMap:slideMap]
        } else {
            redirect controller: "home"
        }
	}
	
	def pickSessions = {
		params.each{key, val -> println "$key == $val"}

	        def user = User.findByUsername(springSecurityService.principal.username)
	        println "User is $user"
	        if (!user.choice){

	            user.choice = new SessionChoice(params)
	            user.choice.conference = params.tinyName
	        }
	        else {
	            user.choice.properties = params
                user.choice.conference = params.tinyName
	            user.choice.session1 = params.session1 ? true : false
	            user.choice.session2 = params.session2 ? true : false
	            user.choice.session3 = params.session3 ? true : false
	            user.choice.session4 = params.session4 ? true : false
	            user.choice.session5 = params.session5 ? true : false
	            user.choice.session6 = params.session6 ? true : false
	            user.choice.session7 = params.session7 ? true : false
	            user.choice.session8 = params.session8 ? true : false
	            user.choice.session9 = params.session9 ? true : false
	            user.choice.session10 = params.session10 ? true : false
	            user.choice.session11 = params.session11 ? true : false
	            user.choice.session12 = params.session12 ? true : false
	            user.choice.session13 = params.session13 ? true : false
	            user.choice.session14 = params.session14 ? true : false
	            user.choice.session15 = params.session15 ? true : false
	            user.choice.session16 = params.session16 ? true : false
	            user.choice.session17 = params.session17 ? true : false
	            user.choice.session18 = params.session18 ? true : false
	            user.choice.session19 = params.session19 ? true : false
	            user.choice.session20 = params.session20 ? true : false
	            user.choice.session21 = params.session21 ? true : false
	            user.choice.session22 = params.session22 ? true : false
	            user.choice.session23 = params.session23 ? true : false
	            user.choice.session24 = params.session24 ? true : false
	            user.choice.session25 = params.session25 ? true : false
	            user.choice.session26 = params.session26 ? true : false
	            user.choice.session27 = params.session27 ? true : false
	            user.choice.session28 = params.session28 ? true : false
	            user.choice.session29 = params.session29 ? true : false
	            user.choice.session30 = params.session30 ? true : false
	        }
	        if (!user.save()){
	            user.errors.allErrors.each{println it}
	        }
	        flash.message = "Thank you for your help!"
	        redirect(controller:'conference', action:'schedule', id: params.tinyName, params:[tinyName:params.tinyName])
	    }

}
