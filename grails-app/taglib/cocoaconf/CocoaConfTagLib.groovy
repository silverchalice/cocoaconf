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

}
