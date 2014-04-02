package com.cocoaconf


class SpeakerController {
    def springSecurityService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index = {
        redirect(action: "list", params: params)
    }
    
    def createSpeakerHash = {
        def speakers = Speaker.list(sort:'lastName')
        println "There are ${speakers.size()} speakers."
        speakers.each{speaker ->
            if (speaker.firstName && speaker.lastName){
                speaker.speakerHash = "${speaker.firstName[0..1]}${speaker.id}${speaker.lastName[-2..-1]}"
                speaker.save(flush:true, failOnError:true)
            }
        }
        def speakerHashList = ''
        speakers = Speaker.list(sort:'lastName')
        speakers.each{speaker ->
            speakerHashList += "<html><p>${speaker.firstName} ${speaker.lastName}, ${speaker.email ?: 'no.email.available'}, http://cocoaconf.com/callForSpeakers/${speaker.speakerHash}</p></html>"
        }
        render speakerHashList
    }

    def list = {
        params.max = Math.min(params.max ? params.int('max') : 10, 100)
        params.sort = 'lastName'
        [speakerInstanceList: Speaker.list(params), speakerInstanceTotal: Speaker.count()]
    }

    def speakers = {
	    def speakers = Speaker.where{firstName != 'TBA' && firstName != 'Mystery'}.list([sort:'lastName'])
        [speakerInstanceList: speakers, speakerInstanceTotal: Speaker.count()]
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
            image.transferTo(new File(speakerDir, image.originalFilename))
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
        def speakerInstance
        if (params.firstName){
	        speakerInstance = Speaker.findByFirstNameAndLastName(params.firstName, params.lastName)
        }
        else
            speakerInstance = Speaker.get(params.id)
        if (!speakerInstance) {
            flash.message = "${message(code: 'default.not.found.message', args: [message(code: 'speaker.label', default: 'Speaker'), params.id])}"
            redirect(action: "speakers")
        }
        else {
            [speaker: speakerInstance, feedEntries: FeedEntry.findAllBySpeakerId(speakerInstance.id, [max:3, sort:'published', order:'desc'])]
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
        def speakerInstance = Speaker.get(params.id.toLong())
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

    def availability = {
        def speaker = Speaker.findBySpeakerHash(params.speakerHash)
        def conferenceList = Conference.findAllByCallForSpeakers(true)
        def availabilities = [:]
        conferenceList.each{conf ->
            availabilities.put(conf.id, Availability.findBySpeakerAndConference(speaker, conf))
        }
        [speaker:speaker, conferenceList:conferenceList, availabilities:availabilities]
    }

    def saveAvailability = {
        params.each{key, val -> println "$key == $val"}
        def speaker = Speaker.get(params.id)
        def confIds = params.conferenceIds?.tokenize(',')
        confIds.each{confId ->
            def conference = Conference.get(confId)
            def availability = Availability.findBySpeakerAndConference(speaker, conference)
            if (!availability){
                availability = new Availability()
            }
            availability.conference = conference
            availability.speaker = speaker
            availability.available = params.get("available_${conference.id}") == 'on' ? true : false
            if (params.get("numSessions_${conference.id}")?.isNumber()){
                availability.numberOfTalks = params.get("numberOfTalks${conference.id}").toInteger()
            } else { availability.numberOfTalks = 0}
            availability.travelHelp = params.get("travelHelp_${conference.id}") == 'on' ? true : false
            availability.comments = params.get("comments_${conference.id}")
            if (availability.save(flush:true, failOnError : true)){
                flash.message = "Thanks!  Hope to see you this fall."
            }
        }
        redirect action:'availability'
    }
}
