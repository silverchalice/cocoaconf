package com.cocoaconf

class Partner {
	Conference conference
	String name
	String url
	String blurb
	String level
	String logoFile
	String logoStyle1
	String logoStyle2
	
    static constraints = {
	    conference()
		name()
		url(url:true, nullable:true, blank:true)
		blurb(maxSize:5000, nullable:true, blank:true)
		level(inList:['basic', 'silver', 'gold', 'platinum', 'usergroup'])
		logoFile(nullable:true, blank:true)
		logoStyle1(nullable:true, blank:true)
		logoStyle2(nullable:true, blank:true)
    }
}
