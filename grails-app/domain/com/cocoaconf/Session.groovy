package com.cocoaconf


class Session {

    Conference conference
    Presentation presentation
    Date startTime
    Date endTime
    String room
    Speaker speaker
    Integer track

    static belongsTo = Conference

    static constraints = {
	    startTime nullable:true
	    endTime nullable:true
		room nullable:true
    }
}
