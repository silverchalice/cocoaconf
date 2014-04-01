package com.cocoaconf

class Availability {
	Conference Conference
	User user
	Boolean available
	Integer numberOfTalks
	Boolean travelHelp
	String comments

    static constraints = {
    	comments nullable:true, maxSize:10000
    }
}
