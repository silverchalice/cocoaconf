package com.cocoaconf

class ShowCaseApp {
	String name
	String author
	String description
	String category
	Boolean iPhone = false
	Boolean iPad = false
	Boolean mac = false
	byte[] icon
	String story
	
	static hasMany = [images:AppImage]
	
    static constraints = {
		name()
		author()
		description(maxSize:500)
		category(nullable:true, blank:true)
		icon(maxSize:500000)
		story(maxSize:20000)
    }
}
