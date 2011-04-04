package net.cocoaconf

class Conference {

    String city
    String state
    Date startDate
    Date endDate
    Venue venue
    String description
    String tinyName

    static hasMany = [ speakers : Speaker, sessions : Session ]

    static constraints = {
	    startDate nullable:true
	    endDate nullable:true
	    venue nullable:true
	    description maxSize:10000
    }
}
