package com.cocoaconf

class Video {
	String title
	String description
	String playerBlurb
	String speakerPhoto
	String speakerBlurb
    String eventName
    String sponsorBlurb
    String slug

    static constraints = {
	  title nullable: false
	  slug nullable: false
	  description nullable: true, maxSize: 5000
	  playerBlurb nullable: true, maxSize: 10000
	  speakerPhoto nullable: true
	  speakerBlurb nullable: true, maxSize: 5000
	  eventName nullable: true
	  sponsorBlurb nullable:true, maxSize: 5000
    }

    String toString(){title}

}
