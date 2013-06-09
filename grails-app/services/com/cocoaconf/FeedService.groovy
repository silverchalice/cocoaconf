package com.cocoaconf

import java.net.URL
import java.io.InputStreamReader
import com.sun.syndication.feed.synd.SyndFeed
import com.sun.syndication.io.SyndFeedInput
import com.sun.syndication.io.XmlReader

class FeedService {

    def latestFromSpeaker(id) {
   // 	println "begin latestFrom Speaker $id"
        def speaker = Speaker.get(id)
        List entrification = []
        if(speaker && speaker.feed){
            URL feedUrl = new URL(speaker.feed)
            SyndFeedInput input = new SyndFeedInput()
            SyndFeed feed = input.build(new XmlReader(feedUrl))

/*            println "the titles here are ${feed.entries.collect{it.title}}"

            println "here is the feed entry deal... o joyz!!!1!"
            println feed.entries[0]
*/

/*            println "the speaker is $speaker"
            println "does he have a feed? ${speaker.feed}"
            println "\n"

            feed.properties.each { key, value ->
                println "$key: $value"
            }
            println "\n"
*/
            feed.entries.each {
                def e = new FeedEntry(title: it.title, link: it.link, body: it.contents[0]?.value ?: it.description?.value, published: it.publishedDate ?: it.updatedDate, speakerId: speaker.id)
                if(!FeedEntry.findByTitleAndSpeakerId(it.title, speaker.id)){
                    entrification.add(e)
                    e.save(failOnError:true)
                } 
            }
        }
        return entrification
    }

	def refreshSpeakerFeeds(){
	//	println "begin refreshSpeakers"
		def speakers = Speaker.findAllByFeedIsNotNull(sort:'id')
		def feedEntries = []
		for (speaker in speakers){
		    feedEntries.add latestFromSpeaker(speaker.id)
		}
		return feedEntries.size()
	}
    
}
