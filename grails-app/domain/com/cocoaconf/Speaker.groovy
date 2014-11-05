package com.cocoaconf


class Speaker {
	
	String firstName
	String lastName
  String slug
  String title
	String email
	String bio
	String imagePath
	String website
	String blog
    String feed
	String twitter
	String appnet
	String speakerHash

  byte[] trainingImage

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
	    website nullable:true
	    blog nullable:true
        feed nullable:true
	    twitter nullable:true
	    appnet nullable:true
	    speakerHash nullable:true
      trainingImage nullable: true
    }

    static mapping = {
        sort 'presentations'
        order 'asc'
    }

    def upcomingConferences() {
        def conferences = Conference.findAllByStatus(Conference.ACTIVE)
        return conferences.findAll { it?.speakers*.id.contains(id) }
    }

    String toString(){ "${firstName} ${lastName}" }

}
