package com.cocoaconf


class Speaker {
	
	String firstName
	String lastName
  String title
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
      title nullable: true
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

    def upcomingConferences() {
        def conferences = Conference.findAll { startDate > new Date() } 
        def upcomingWithSpeaker = []
        conferences.each {
            if(it?.speakers?.collect { it.id }.contains(this.id)){
                upcomingWithSpeaker << it
            }
        }
        return upcomingWithSpeaker
    }

    String toString(){ "${firstName} ${lastName}" }

}
