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

        events << Conference.findByDescription("CocoaConf Chicago 2014")
        events << Conference.findByDescription("CocoaConf DC 2014")
        events << Conference.findByDescription("CocoaConf Mini Austin 2014")
        events << Conference.findByDescription("CocoaConf San Jose 2014")
        events << Conference.findByDescription("CocoaConf Mini Raleigh 2014")

        events.each { event ->
            out << render(template: '/home/conferenceCell', model: [conference: event])
        }

    }

}
