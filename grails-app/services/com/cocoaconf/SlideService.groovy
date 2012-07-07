package com.cocoaconf

class SlideService {

    def loadSlides(conference) {
		def slides = conference.slides
		def slideMap = [:]
		def speakerMap = slides.groupBy{it.speaker}
		speakerMap.each{key, val -> 
			def speaker = key
			def presentationMap = val.groupBy{it.presentation}
			slideMap.put speaker, presentationMap
		}
		return slideMap
    }
}
