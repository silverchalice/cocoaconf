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
        def images = [35 : 'img_chicago_bean_small.jpg', 38 : 'img_washington_small_02.jpg', 39: 'img_sanjose_small_01.jpg', 20 : 'img_austin_small_01.jpg', 21 : 'img_raleigh_small_01.jpg', 22: 'img_columbus_small_01.jpg', 23: 'img_lasvegas_small_01.jpg', 37: 'img_seattle_small_02.jpg', 32: 'img_boston_small_02.jpg', 26: 'img_atlanta_small_01.jpg', 27: 'Chicago-main.jpg', 28: 'DC-main.jpg', 29: 'portland-main.jpg', 36: 'austin-main.jpg', 31: 'img_columbus_small_01.jpg']
        if(conference && conference.status != Conference.COMPLETED){
            out << '<img class="img-rounded" src="' + g.resource(dir: 'images', file: images[conference.id.toInteger()]) + '" alt="Photo (cc) by ___ on Flickr" />'
        } else {
            out << '' 
        }
    }

    def cityName = { attrs ->
        def cityName
        switch(attrs.id) {
            case 27:
                cityName = "Chicago, IL"
                break
            case 28:
                cityName = "Washington D.C"
                break
            case 29:
                cityName = "Portland, OR"
                break
            case 30:
                cityName = "Austin, TX"
                break
            case 31:
                cityName = "Columbus, OH"
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
        if(attrs.id == 22){
            out << "CocoaConf Columbus is sold out!"
            return
        } else if(attrs.id == 24){
            out << "CocoaConf Seattle is sold out!"
            return
        } else if(attrs.id == 25){
            out << ""
            return
        }

        def c = Conference.get(attrs.id)
        if(!c.startDate){
            return
        }

        if(c.status == Conference.ACTIVE){
            Double timeLeft = c.startDate - new Date()
            timeLeft = timeLeft / 7; timeLeft = timeLeft.round() - 1
            if(timeLeft > 0){
                out << "Ticket sales end in "
                out << timeLeft.toInteger()
                out << "${timeLeft > 1 ? ' weeks!' : ' week!'}"
            }
        }
    }

    def registerButton = { attrs ->
        def c = Conference.get(attrs.id)
        if(c.id == 22 || c.id == 24){
            out << "${c?.city} Waitlist"
            return
        }
        out << "Register for ${c?.city}"
    }

    def pickACity = {attrs ->
        def confs = Conference.findAllByStatus('active', [sort:'id'])
        out << """
            <ul class="dropdown-menu">
                <!--<li class="nav-header">Choose a City</li>
                <li class="divider"></li>-->
             """
        confs.each{
            out << """
            <li><a href="/${it.tinyName}/home">${it.cityNickname}</a></li>
            """
        }
        out << "</ul>"
    }



}
