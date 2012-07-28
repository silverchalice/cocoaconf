package com.cocoaconf

class FeedsJob {
	def feedService
	
    static triggers = {
      simple name: 'importTrigger', startDelay: 60000l, repeatInterval: 600000l
    }

    def execute() {
	  // println "Calling feedService..."
    //    def feedCount = feedService.refreshSpeakerFeeds()
     //   log.info("$feedCount entries were loaded.")
    }
}
