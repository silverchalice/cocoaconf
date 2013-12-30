package com.cocoaconf


class Speaker {
	
	String firstName
	String lastName
	String email
  String title
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
	    title nullable:false, maxSize: 100
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

    static upcomingSpeakers() {
      List speakers = []
      Conference.findAllByStatus(Conference.ACTIVE).collect { it.speakers }.each {
        speakers << it
      }
      return speakers?.unique()
    }

    static allUpcoming() {
      return Conference.findAllByStatusAndStartDateGreaterThan(Conference.ACTIVE, new Date()).collect { it.speakers }.unique()
    }

    String toString(){ "${firstName} ${lastName}" }

}
