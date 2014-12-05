package com.cocoaconf

class YosemiteActivity {

	String name
	String description
	Integer limit = 1

	static hasMany = [attendees: User]
	static belongsTo = User
	
    static constraints = {
    	name nullable:false
    	description maxSize:5000, nullable:true
    	limit nullable:false
    }
}
