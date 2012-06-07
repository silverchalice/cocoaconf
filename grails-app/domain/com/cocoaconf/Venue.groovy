package com.cocoaconf


class Venue {

    String name
    String description
    String googleMapsCode
    String address
    String address2
    String city
    String state
    String zip
    String phone
    String website
    String imagePath

    static constraints = {
	    description maxSize:10000, nullable:true
	    googleMapsCode maxSize:9999999, nullable:true
	    phone nullable:true
	    website nullable:true
	    imagePath nullable:true
	    address2 nullable:true
	    
    }

    String toString(){ name }

}
