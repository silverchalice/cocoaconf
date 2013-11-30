package com.cocoaconf

class Click {
	Date dateCreated
	String referer
	String tag
	Conference conference

    static constraints = {
    	referer nullable:true
    	tag nullable:true
    	conference nullable:true
    }
}
