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
    String sponsorListBlurb
    List days
    Boolean active
    Boolean completed = false

    static hasMany = [speakers : Speaker, sessions : Session, days: ConferenceDay, partners: Sponsorship]

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
		sponsorListBlurb nullable:true, maxSize:100000
		completed nullable:true
    }

    def getSpeakers(){
        def speakers = sessions.collect { it.presentation.speaker }.sort{it.lastName}
        speakers = speakers - Speaker.findByFirstName("TBA")
        speakers = speakers - Speaker.findByFirstName("Mystery")
        return speakers.unique()
    }

    def sessionList(){
        def sessions = sessions.findAll{it.type != 'break'}
    }

	def getSponsorPartners(){
		def levels = ['basic', 'silver', 'gold', 'platinum']
		def homePagePartners = partners.findAll{levels.contains(it.partner.level)}
		def results = homePagePartners.collect{it.partner}
		return results.sort{it.priority}
	}
	
	def getGroupPartners(){
		def groupPartners = partners.findAll{it.partner.level == 'usergroup'}
		def result = groupPartners.collect{it.partner}
		return groupPartners.sort{it.priority}
	}
	
    static mapping = {
		days sort:'id'
        registrationBlurb type: 'text'
        eventBriteBlurb type: 'text'
        partnerBlurb type:'text'
        featuredSpeakers type:'text'
        sponsorListBlurb type:'text'
    }
}


