package com.cocoaconf

class BlogLink {
	String title
	String snippet
	String url
	Conference event
	
    static constraints = {
		title()
		snippet(maxSize:2000)
		url(url:true)
		event(nullable:true)
    }
}
