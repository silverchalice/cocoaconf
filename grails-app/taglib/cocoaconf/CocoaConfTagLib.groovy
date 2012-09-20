package cocoaconf

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

}
