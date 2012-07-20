<% response.setContentType("application/atom+xml") 
%><feed xmlns="http://www.w3.org/2005/Atom">
  <title type="text">The CocoaConf Blog</title>
  <link rel="alternate" type="text/html" href="http://cocoaconf.com"/>
  <link rel="self" type="application/atom+xml" href="http://cocoaconf.com/feed" />
  <updated><g:atomDate>${lastUpdated}</g:atomDate></updated>
  <author><name>admin</name></author>
  <id>tag:cocoaconf.com,2012-07-20:feed</id>
  <generator uri="http://cocoaconf.com" version="0.1">Hand-rolled Grails code, mostly borrowed from sdavis</generator>

  <g:each in="${postInstanceList}" status="i" var="postInstance">
<g:render template="entry" bean="${postInstance}" var="postInstance" />
  </g:each>

</feed>
