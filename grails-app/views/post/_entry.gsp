<entry xmlns='http://www.w3.org/2005/Atom'>
  <author>
    <name>admin</name>
  </author>
  <published><g:atomDate>${postInstance.dateCreated}</g:atomDate></published>
  <updated><g:atomDate>${postInstance.lastUpdated}</g:atomDate></updated>
  <link href="http://cocoaconf.com/blog/${postInstance.slug}" rel="alternate" 
    title="${postInstance.title}" type="text/html" />
  <id>tag:cocoaconf.com,2012:/blog/${postInstance.slug}</id>
  <title type="text">${postInstance.title}</title>
  <content type="xhtml">
    <div xmlns="http://www.w3.org/1999/xhtml">
      ${postInstance.body}
    </div>
  </content>
</entry>
