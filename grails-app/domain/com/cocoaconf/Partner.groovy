package com.cocoaconf

class Partner {
	String name
	String url
	String blurb
	String logoFile
	String logoStyle1
	String logoStyle2
	
	static hasMany = [events:Sponsorship]
	
    static constraints = {
		name()
		url(url:true, nullable:true, blank:true)
		blurb(maxSize:5000, nullable:true, blank:true)
		logoFile(nullable:true, blank:true)
		logoStyle1(nullable:true, blank:true)
		logoStyle2(nullable:true, blank:true)
    }
}
