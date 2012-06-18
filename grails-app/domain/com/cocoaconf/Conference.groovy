package com.cocoaconf


class Conference {

    String city
    String state
    Date startDate
    Date endDate
    String dates
    Venue venue
    String description
    String blurb //text on conference home page
    String registrationBlurb //text on conference "Register" page
    String eventBriteBlurb //code to display EventBrite stuff on "Register" page
    String partnerBlurb //html for partner page for a specific conference
    String featuredSpeakers
    String tinyName
    String displayName
    List days
    Boolean active

    static hasMany = [speakers : Speaker, sessions : Session, days: ConferenceDay]

    static constraints = {
		startDate nullable:true
		endDate nullable:true
		venue nullable:true
		description maxSize:10000
		days nullable:true
		dates nullable:true
		displayName nullable:true
		registrationBlurb nullable:true, maxSize:10000
		eventBriteBlurb nullable:true, maxSize:10000
		partnerBlurb nullable:true, maxSize:100000
		featuredSpeakers nullable:true, maxSize:100000
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
        partnerBlurb type:'text'
        featuredSpeakers type:'text'
    }
}


