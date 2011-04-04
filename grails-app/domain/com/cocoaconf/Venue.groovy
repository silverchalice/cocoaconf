package com.cocoaconf


class Venue {

    String name
    String description
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
	    phone nullable:true
	    website nullable:true
	    imagePath nullable:true
	    
    }
}
