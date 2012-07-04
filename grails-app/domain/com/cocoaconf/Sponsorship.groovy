package com.cocoaconf

class Sponsorship {
    Conference conference
    Partner partner
    String level
	Integer priority = 99
    static belongsTo = Conference

    static constraints = {
	    conference()
	    partner()
	    level(inList:['basic', 'silver', 'gold', 'platinum', 'usergroup', 'individual'])
    }
}
