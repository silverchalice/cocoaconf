package com.cocoaconf


class Speaker {
	
	String firstName
	String lastName
	String email
	String bio
	String imagePath
	String blog
    String feed
	String twitter
	String appnet

    //TODO: remove this
    Boolean current

    static hasMany = [presentations:Presentation]

    static constraints = {
	    firstName nullable:false
	    lastName nullable:false
	    email nullable:false, email:true
	    bio nullable:true, maxSize: 2000
	    imagePath nullable:true
	    blog nullable:true
        feed nullable:true
	    twitter nullable:true
	    appnet nullable:true
    }

    static mapping = {
        sort 'presentations'
        order 'asc'
    }




    String toString(){ "${firstName} ${lastName}" }

}
