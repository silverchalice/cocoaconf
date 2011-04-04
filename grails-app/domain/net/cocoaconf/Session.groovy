package net.cocoaconf

class Session {

    Presentation presentation
    Date startTime
    Date endTime
    String room
    Speaker speaker

    static constraints = {
	    startTime nullable:true
	    endTime nullable:true
		room nullable:true
    }
}
