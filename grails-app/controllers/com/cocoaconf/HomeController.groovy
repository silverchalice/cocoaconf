package com.cocoaconf

import org.codehaus.groovy.grails.commons.ConfigurationHolder


class HomeController {

    def springSecurityService
    def config = ConfigurationHolder.config

    def index = {
	    redirect controller: 'blogLink', action: 'roundup'
	}

    def announcement = {}

    def register = {}

    def about = {}

    def schedule = {

        def choice = null
        def slides = null

        if(springSecurityService.isLoggedIn()) {
            def user = User.get(springSecurityService.principal.id)
            choice = user.choice

            File scheduleSlideDownload = new File(config.slideDirectory + "cocoaconf_columbus_2011_all_slides.zip")
            if(scheduleSlideDownload.exists()) {
                println "slides exist!"
                slides = "cocoaconf_columbus_2011_all_slides.zip"
            }
        } else{
           println "no user"
       }

       [choice: choice, slides:slides]
    }

    def schedule_oh = {

        def choice = null
        def slides = null

        if(springSecurityService.isLoggedIn()) {
            def user = User.get(springSecurityService.principal.id)
            choice = user.choice

            File scheduleSlideDownload = new File(config.slideDirectory + "cocoaconf_columbus_2011_all_slides.zip")
            if(scheduleSlideDownload.exists()) {
                println "slides exist!"
                slides = "cocoaconf_columbus_2011_all_slides.zip"
            }
        } else{
           println "no user"
       }

       [choice: choice, slides:slides]
    }

    def partners = {}

    def team = {}

    def nearYou = {

        [states: ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California', 'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii', 'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana', 'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota', 'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire', 'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota', 'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island', 'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont', 'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming']]

    }

    def downloadSlides = {

        def zipFile = params.file

        File download = new File(config.slideDirectory + zipFile)

        response.contentType = "application/zip"
	    response.contentLength = download.size()
	    response.outputStream.write(download.readBytes())
    }


}
