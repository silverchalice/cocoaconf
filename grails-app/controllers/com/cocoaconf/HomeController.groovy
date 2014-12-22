package com.cocoaconf

import org.springframework.web.context.request.RequestContextHolder as RCH
import grails.util.Holders

//`Oh! captive, bound, and double-ironed,' cried the phantom, `not to know, that ages of incessant labour, by immortal creatures, for this earth must pass into eternity before the good of which it is susceptible is all developed.

class HomeController {

    def springSecurityService
    def feedService
    def randomService
    def config = Holders.config

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

    def yosemite = {}

    def select_activities = {
      def user = User.get(params.id)
      println "here are the activities: " + user.activities

      [user: user, activities: YosemiteActivity.list(), activityIds: user.activities.collect { it.id }]
    }

    def toggle_activity_selection = {
      println "in toggle_activity_selection. params are:"
      println params
      def user = User.get(params.userId)
      println "params.id is ${params.id}"
      params.id = params.id?.contains(',day') ? params.id[0..-8] : params.id
      
      println "..and now the params.id is ${params.id}"
      def activity = YosemiteActivity.get(params.int('id')) 

      if(activity){
        if(params.attending == "true"){
          user.activities.add(activity)
          activity.groupSize--
          user.activities.findAll { it.id != activity.id && it.dayOne == activity.dayOne }.each {
            println "\n\nit is $it\n\n"
            user.activities.remove(it)
          }
        } else if(activity.attendees.find { it.id == user.id }){
          user.activities.remove(activity)
          activity.groupSize++
        }
        user.save(failOnError:true)
        activity.save(failOnError:true)

        render "(${activity.groupSize} left)"
      }
      return false
    }

    def university = {
      redirect controller: "term", action: "index", params: params
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
      redirect(uri: resource(dir: 'files', file: 'Sponsorship-Spring-2015.pdf'))
      return
    }

    def staytuned = {
      render view: 'staytuned'
    }

    def notfound = {
      redirect action: 'staytuned'
    }

}
