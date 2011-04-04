package net.cocoaconf

class Speaker {
	
	String firstName
	String lastName
	String email
	String bio
	String imagePath

    static constraints = {
	    firstName nullable:false
	    lastName nullable:false
	    email nullable:false, email:true
	    bio nullable:true, maxSize: 2000
	    imagePath nullable:true
    }
}
