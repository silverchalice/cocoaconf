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
        def images = [17 : 'img_chicago_bean_small.jpg', 18 : 'img_washington_small_02.jpg', 19 : 'img_sanjose_small_01.jpg', 20 : 'img_austin_small_01.jpg', 21 : 'img_raleigh_small_01.jpg', 22: 'img_columbus_small_01.jpg', 23: 'img_lasvegas_small_01.jpg', 24: 'img_seattle_small_02.jpg', 25: 'img_boston_small_02.jpg', 26: 'img_atlanta_small_01.jpg']
        if(conference && conference.status == Conference.ACTIVE){
            out << '<img class="img-rounded" src="' + g.resource(dir: 'images', file: images[conference.id.toInteger()]) + '" alt="Photo (cc) by ___ on Flickr" />'
        } else {
            out << '' 
        }
    }

    def cityName = { attrs ->
        def cityName
        switch(attrs.id) {
            case 19:
                cityName = "San Jose, CA &#8212; <strong>Sold Out!</strong>"
                break
            case 21:
                cityName = "Raleigh, NC"
                break
            case 22:
                cityName = "Columbus, OH"
                break
            case 23:
                cityName = "Las Vegas, NV"
                break
            case 24:
                cityName = "Seattle, WA"
                break
            case 25:
                cityName = "Boston, MA"
                break
            case 26:
                cityName = "Atlanta, GA"
                break
        }
        out << cityName
    }

    def speakingAt = { attrs ->
        def speaker = Speaker.get(attrs.speakerId)
        if(speaker){
            List conferences = speaker.upcomingConferences()
            println "and the conferences are $conferences"
            if(conferences?.size() > 0){
                out << """<i class="ion-ios7-location-outline"></i>&nbsp;<span class="location"> ${speaker?.id == 114 ? 'Performing' : 'Speaking'} at CocoaConf in """
            } else {
                return
            }
            if(conferences.size() == 1){
                out << g.link(controller: 'conference', action: 'home', params: [tinyName: conferences[0].tinyName], "${conferences[0].city}")
            } else if(conferences.size() == 2){
                out << g.link(controller: 'conference', action: 'home', params: [tinyName: conferences[0].tinyName], "${conferences[0].city}")
                out << " and "
                out << g.link(controller: 'conference', action: 'home', params: [tinyName: conferences[1].tinyName], "${conferences[1].city}")
            } else {
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
        }
        out << "</span>"
    }

    def alsoSpeakingAt = { attrs ->
        def speaker = Speaker.get(attrs.speakerId)
        if(speaker){
            List conferences = speaker.upcomingConferences().findAll { it.id != attrs.currentConfId }
            println "and the conferences are $conferences"
            if(conferences?.size() > 0){
                out << """<br><i class="ion-ios7-location-outline"></i>&nbsp;<span class="location"> Also ${speaker?.id == 114 ? 'performing' : 'speaking'} at """
            } else {
                return
            }
            if(conferences.size() == 1){
                out << g.link(controller: 'conference', action: 'home', params: [tinyName: conferences[0].tinyName], "${conferences[0].city}")
            } else if(conferences.size() == 2){
                out << g.link(controller: 'conference', action: 'home', params: [tinyName: conferences[0].tinyName], "${conferences[0].city}")
                out << " and "
                out << g.link(controller: 'conference', action: 'home', params: [tinyName: conferences[1].tinyName], "${conferences[1].city}")
            } else {
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
        }
        out << "</span>"
    }

    def maybeShowPastText = { attrs ->
        def c = Conference.get(attrs.id)
        if(c?.status != Conference.ACTIVE && c?.pastText){
            out << """<div class="message">"""
            out << c?.pastText
            out << """</div>"""
        }
    }

    def weeksUntilSalesEnd = { attrs ->
        if(attrs.id == 17){
            out << "CocoaConf Chicago is sold out!"
            return
        } else if(attrs.id == 18){
            out << "CocoaConf DC is sold out!"
            return
        } else if(attrs.id == 19){
            out << "CocoaConf San Jose is sold out!"
            return
        } else if(attrs.id == 20){
            out << "CocoaConf Mini Austin is sold out!"
            return
        } else if(attrs.id == 23 || attrs.id == 24 || attrs.id == 25 || attrs.id == 26){
            out << ""
            return
        }

        def c = Conference.get(attrs.id)
        if(c.status == Conference.ACTIVE){
            out << "Ticket sales end in "
            Double timeLeft = c.startDate - new Date()
            timeLeft = timeLeft / 7; timeLeft = timeLeft.round() - 1
            out << timeLeft.toInteger()
            out << "${timeLeft > 1 ? ' weeks!' : ' week!'}"
        }
    }

    def registerButton = { attrs ->
        def c = Conference.get(attrs.id)
        if(c.id == 19){
            out << "${c?.city} Waitlist"
            return
        }
        out << "Register for ${c?.city}"
    }




}
