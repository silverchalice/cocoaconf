package com.cocoaconf

import org.codehaus.groovy.grails.commons.ConfigurationHolder

//`Oh! captive, bound, and double-ironed,' cried the phantom, `not to know, that ages of incessant labour, by immortal creatures, for this earth must pass into eternity before the good of which it is susceptible is all developed.

class HomeController {

    def springSecurityService
    def feedService
    def config = ConfigurationHolder.config

    def index = {
	    redirect action: 'announcement'
	}

    def testFeed = {
		def feedList = feedService.latestFromSpeaker(16, 5)
		feedList.each{
			println "**********************************************************"
			println it}
		render "ok"
	}
	
    def announcement = {}

    def register = {}

    def about = {}

    def events = {




        [conferenceInstanceList : Conference.findAllByStatusNotInList([Conference.COMPLETED], [sort: 'startDate'])]

    }

    def schedule = {

        def choice = null
        def slides = null

        if(springSecurityService.isLoggedIn()) {
            def user = User.get(springSecurityService.principal.id)
            choice = user.choice

            //File scheduleSlideDownload = new File(config.slideDirectory + "cocoaconf_columbus_2011_all_slides.zip")
            //if(scheduleSlideDownload.exists()) {
            //    slides = "cocoaconf_columbus_2011_all_slides.zip"
            //}
        } else{
           println "no user"
       }

       [choice: choice, /* slides:slides */]
    }

    def schedule_raleigh = {
    }

    def schedule_oh = {
        def choice = null
        def slides = null
        [choice: choice, slides:slides]
    }

    def partners = {}

	def chicago_slides = {}
  
    def team = {}

    def nearYou = {
        [states: ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'District of Columbia', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming']]
    }

    def downloadSlides = {
        def zipFile = params.file
        File download = new File(config.slideDirectory + zipFile)
        response.contentType = "application/zip"
	    response.contentLength = download.size()
	    response.outputStream.write(download.readBytes())
    }

    def testFeeds = {
        def speaker = Speaker.findByLastName("Dudney")
        feedService.latestFromSpeaker(speaker?.id)
    }

}
