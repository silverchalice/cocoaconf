package com.cocoaconf

class Episode {
	String title
	String subTitle
	String signalLeafBlurb
	String showNotes
	Long episodeNumber
	Date dateCreated
	Date lastUpdated
	Date datePublished
	String sponsorName
	String sponsorLink
	String sponsorBlurb
	String downloadLink
	Integer viewCount = 0

    static constraints = {
	  title nullable: false
	  subTitle nullable: true
	  signalLeafBlurb nullable: true, maxSize: 500
	  showNotes nullable: true, maxSize: 10000
	  episodeNumber nullable: false
	  dateCreated nullable: true
	  lastUpdated nullable: true
	  datePublished nullable: true
	  sponsorName nullable: true
	  sponsorLink nullable: true
	  sponsorBlurb nullable: true, maxSize: 2000
	  downloadLink nullable:true
	  viewCount nullable:true
    }
}
