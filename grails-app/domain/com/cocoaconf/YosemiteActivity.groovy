package com.cocoaconf

class YosemiteActivity {

	String name
	String description
	Integer groupSize = 1
  Boolean dayOne = false
  Boolean dayTwo = false

	static hasMany = [attendees: User]
	static belongsTo = User
	
    static constraints = {
    	name nullable:false
    	description maxSize:5000, nullable:true
    	groupSize nullable:false
      dayOne nullable:false
      dayTwo nullable:false
    }

    Integer available(){
      groupSize - attendees.size()
    }
}
