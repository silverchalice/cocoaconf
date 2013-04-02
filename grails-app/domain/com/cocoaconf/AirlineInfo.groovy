package com.cocoaconf


class AirlineInfo {
	
	String airlineName
	String ffNumber
	

    static constraints = {
	    airlineName nullable:false
        ffNumber nullable:true
    }

    String toString(){ airlineName }

}
