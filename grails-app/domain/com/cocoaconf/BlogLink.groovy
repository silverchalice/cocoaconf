package com.cocoaconf

class BlogLink {
	String title
	String snippet
	String url
    String username
    String author
	Conference event
	Integer priority
	
    static constraints = {
		title nullable: true
		snippet maxSize:2000
		url url:true
		event nullable:true
		priority nullable:true
        username nullable: true
        author nullable: true
    }
}
