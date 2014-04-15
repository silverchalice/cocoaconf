package com.cocoaconf

import org.codehaus.groovy.grails.commons.ConfigurationHolder
import org.springframework.web.context.request.RequestContextHolder as RCH

//`Oh! captive, bound, and double-ironed,' cried the phantom, `not to know, that ages of incessant labour, by immortal creatures, for this earth must pass into eternity before the good of which it is susceptible is all developed.

class HomeController {

    def springSecurityService
    def feedService
    def randomService
    def config = ConfigurationHolder.config

    def index = {
      [useImg: randomService.nextInteger(100) + 1]
	}

    def testFeed = {
		def feedList = feedService.latestFromSpeaker(16, 5)
		feedList.each{
			println "**********************************************************"
			println it}
		render "ok"
	}
	
    def s = {
      if(params.beautifulAndShiny){
          session.beautiful = true
      } else {
          session.beautiful = null
      }
      session.sawCountdown = "yup"
    }

    def announcement = {}

    def register = {}

    def about = {}

    def events = {

        /*[
            activeConferenceList : Conference.findAllByStatus(Conference.ACTIVE, [sort: 'startDate']),
            pendingConferenceList : Conference.findAllByStatus(Conference.PENDING, [sort: 'startDate'])
        ]*/
        redirect(action: "index")

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
	def kleinfamily = {
		
	}

	def credits = {

	}
	
    def testFeeds = {
        def speaker = Speaker.findByLastName("Dudney")
        feedService.latestFromSpeaker(speaker?.id)
    }

    def droidconf = {
        RCH.requestAttributes.session['fooled'] = 'true'

    }

    def prospectus = {
      redirect(uri: resource(dir: 'files', file: 'CocoaConf-Sponsorship-Brochure-Fall-2014.pdf'))
      return
    }


}
