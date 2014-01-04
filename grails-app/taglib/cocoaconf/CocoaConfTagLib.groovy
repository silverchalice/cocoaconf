package cocoaconf

import com.cocoaconf.*

class CocoaConfTagLib {

    static namespace = "cc"

    def truncate = { attrs ->
      def size = attrs.size?.toInteger() ?: 25
      // Remove HTML Fromatting
      def value = attrs.value
      value = value?.replaceAll("<(.|\n)*?>", '');
      if (value?.length() > size) {
        out << "${value?.substring(0,size)}..."
      }
      else {
        out << value
      }
    }

    def activeEventSidebar = {

        def events = []

        def c1 = Conference.findByDescription("CocoaConf Chicago 2014")
        def c2 = Conference.findByDescription("CocoaConf DC 2014")
        def c3 = Conference.findByDescription("CocoaConf Mini Austin 2014")
        def c4 = Conference.findByDescription("CocoaConf San Jose 2014")
        def c5 = Conference.findByDescription("CocoaConf Mini Raleigh 2014")

        if(c1){
          events << c1
        }
        if(c2){
          events << c2
        }
        if(c3){
          events << c3
        }
        if(c4){
          events << c4
        }
        if(c5){
          events << c5
        }

        events.each { event ->
            out << render(template: '/home/conferenceCell', model: [conference: event])
        }

    }

    def conferenceImage = { attrs ->
        def conference = Conference.get(attrs.id)
        def images = [17 : 'img_chicago_bean_small.jpg', 18 : 'img_washington_small_01.jpg', 19 : 'img_sanjose_small_02.jpg', 20 : 'img_austin_small_02.jpg', 21 : 'img_raleigh_small_01.jpg']
        if(conference){
            out << '<img class="img-rounded" src="' + g.resource(dir: 'images', file: images[conference.id.toInteger()]) + '" alt="Photo (cc) by ___ on Flickr" />'
        } else {
            out << '' 
        }
    }

    def cityName = { attrs ->
        def cityName
        switch(attrs.id) {
            case 17:
                cityName = "Chicago, IL"
                break
            case 18:
                cityName = "Washington D.C."
                break
            case 19:
                cityName = "San Jose, CA"
                break
            case 20:
                cityName = "Austin, TX"
                break
            case 21:
                cityName = "Raleigh, NC"
                break
        }
        out << cityName
    }

    def alsoSpeakingAt = { attrs ->
        def speaker = Speaker.get(attrs.speakerId)
        def currentConf = Conference.get(attrs.currentConfId)
        if(speaker){
            List conferences = speaker.upcomingConferences()
            conferences.remove { id == currentConf }
            if(conferences){
                out << '<i class="ion-ios7-location-outline"></i>&nbsp;<span class="location"> Also speaking at '
                conferences.eachWithIndex { conference, i ->
                    if(i == conferences.size() - 2){
                        out << g.link(controller: 'conference', action: 'home', params: [tinyName: conference.tinyName], "${conference.city}")
                        out << ", and "
                    } else if(i == conferences.size - 1){
                        out << g.link(controller: 'conference', action: 'home', params: [tinyName: conference.tinyName], "${conference.city}")
                    } else {
                        out << g.link(controller: 'conference', action: 'home', params: [tinyName: conference.tinyName], "${conference.city}")
                        out << ", "
                    }
                }
            }
            out << "</span>"
        }
    }

}
