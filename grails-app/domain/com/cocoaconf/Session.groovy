package com.cocoaconf


class Session {

    Presentation presentation
    Date startTime
    Date endTime
    String room
    Speaker speaker
    Integer track

    static constraints = {
	    startTime nullable:true
	    endTime nullable:true
		room nullable:true
    }
}
