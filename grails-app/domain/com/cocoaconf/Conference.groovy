package com.cocoaconf


class Conference {

    String city 
    String state
    Date startDate
    Date endDate
    Venue venue
    String description
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

    static mapping = {
	    days sort:'id'
    }
}
