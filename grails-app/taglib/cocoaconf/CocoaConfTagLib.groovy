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

        def events = Conference.findAllByStatus(Conference.ACTIVE, [sort: 'startDate'])

        events.each { event ->
            out << render(template: '/home/conferenceCell', model: [conference: event])
        }

    }

}
