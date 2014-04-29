package com.cocoaconf

class Availability {
	Conference Conference
	Speaker speaker
	String available
	Integer numberOfTalks
	Boolean travelHelp
	Integer hotelNights=0
	String comments
	Boolean confirmed = false

    def beforeValidate() {
      numberOfTalks = numberOfTalks ?: 0
      hotelNights = hotelNights ?: 0
    }

    static constraints = {
    	user nullable: true
    	available inList:["Yes", "No", "Maybe"]
    	comments nullable:true, maxSize:10000
    }
}
