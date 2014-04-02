package com.cocoaconf

class Availability {
	Conference Conference
	User user
	Speaker speaker
	Boolean available
	Integer numberOfTalks
	Boolean travelHelp
	String comments

    static constraints = {
    	user nullable: true
    	comments nullable:true, maxSize:10000
    }
}
