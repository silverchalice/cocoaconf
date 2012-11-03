package com.cocoaconf


class TravelInfo {
	
	Date birthDate
	String legalName
	String idType 
	String homeAirport

    static belongsTo = [speaker: Speaker]
    static hasMany = [airlines: AirlineInfo]

    static constraints = {
	    birthDate nullable:true
	    legalName nullable:true
	    idType nullable:true
	    homeAirport nullable:true
	    airlines:nullable:true
    }



    String toString(){ "${speaker?.firstName} ${speaker?.lastName} Travel" }

}
