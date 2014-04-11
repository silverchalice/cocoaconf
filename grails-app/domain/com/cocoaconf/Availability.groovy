package com.cocoaconf

class Availability {
	Conference Conference
	User user
	Speaker speaker
	String available
	Integer numberOfTalks
	Boolean travelHelp
	Integer hotelNights=0
	String comments
	Boolean confirmed = false

    static constraints = {
    	user nullable: true
    	available inList:["Yes", "No", "Maybe"]
    	comments nullable:true, maxSize:10000
    }
}
