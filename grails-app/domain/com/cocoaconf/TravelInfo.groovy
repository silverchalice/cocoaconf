package com.cocoaconf


class TravelInfo {
	
	Date birthDate
	String legalName
	String idType 
	String homeAirport


    static constraints = {
	    birthDate nullable:true
	    legalName nullable:true
	    idType nullable:true
	    homeAirport nullable:true
    }



    String toString(){ "${speaker?.firstName} ${speaker?.lastName} Travel" }

}
