package com.cocoaconf


class Conference {

    String city
    String state
    Date startDate
    Date endDate
    Venue venue
    String description
    String blurb //text on conference home page
    String registrationBlurb //text on conference "Register" page
    String eventBriteBlurb //code to display EventBrite stuff on "Register" page
    String tinyName
    List days

    static hasMany = [speakers : Speaker, sessions : Session, days: ConferenceDay]

    static constraints = {
		startDate nullable:true
		endDate nullable:true
		venue nullable:true
		description maxSize:10000
		days nullable:true
    }

    def getSpeakers(){
        def speakers = sessions.collect { it.presentation.speaker }.sort{it.lastName}
        speakers = speakers - Speaker.findByFirstName("TBA")
        return speakers.unique()
    }

    def sessionList(){
        def sessions = sessions.findAll{it.type != 'break'}
    }

    static mapping = {
		days sort:'id'
        registrationBlurb type: 'text'
        eventBriteBlurb type: 'text'
    }
}


