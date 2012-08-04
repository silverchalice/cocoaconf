package com.cocoaconf

import java.net.URL
import java.io.InputStreamReader
import com.sun.syndication.feed.synd.SyndFeed
import com.sun.syndication.io.SyndFeedInput
import com.sun.syndication.io.XmlReader

class FeedService {

    def latestFromSpeaker(id) {
	println "begin latestFrom Speaker $id"
        def speaker = Speaker.get(id)
        if(speaker && speaker.feed){
            URL feedUrl = new URL(speaker.feed)
            SyndFeedInput input = new SyndFeedInput()
            SyndFeed feed = input.build(new XmlReader(feedUrl))

            return feed.entries
        }
    }


	def refreshSpeakerFeeds(){
		println "begin refreshSpeakers"
		def speakers = Speaker.findAllByFeedIsNotNull(sort:'id')
		def feedEntries = []
		for (speaker in speakers){
		    feedEntries.add latestFromSpeaker(speaker.id)
		}
		return feedEntries.size()
	}
    
}
