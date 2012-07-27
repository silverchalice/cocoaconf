package com.cocoaconf

class Interest {

    String email
    String location
	Conference conference
    Boolean needHotel = false

	static belongsTo = Conference
	
    static constraints = {
        email email: true, nullable:true
        location nullable: true
        needHotel nullable: true
    }
}
