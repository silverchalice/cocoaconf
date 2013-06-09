package com.cocoaconf

class FeedsJob {
	def feedService
	
    static triggers = {
      //simple name: 'importTrigger', startDelay: 60000l, repeatInterval: 6000000l
    }

    def execute() {
	  println "Calling feedService..."
       def feedCount = feedService.refreshSpeakerFeeds()
       println("$feedCount entries were loaded.")
    }
}
