package com.cocoaconf


class Session {

    Conference conference
    Presentation presentation
    String start
    String end
    String room
    Integer track
    Integer day
    String type
    Integer slot

    static belongsTo = Conference

    static constraints = {
		start nullable:true
		end nullable:true
		room nullable:true
		track nullable:true
		day nullable:true
		slot nullable:true
		type inList: ['session', 'general', 'break']
    }

    String toString(){"${start}-${end}, Track ${track}"}
}