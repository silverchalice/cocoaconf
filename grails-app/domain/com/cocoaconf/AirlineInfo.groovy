package com.cocoaconf


class AirlineInfo {
	
	String airlineName
	String ffNumber
	
    static belongsTo = [travelInfo:TravelInfo]

    static constraints = {
	    airlineName nullable:false
        ffNumber nullable:true
    }

    String toString(){ airlineName }

}
