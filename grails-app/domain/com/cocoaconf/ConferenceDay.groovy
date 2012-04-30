package com.cocoaconf

class ConferenceDay {
	String name
	
	static belongsTo = [conference:Conference]
	
    static constraints = {
    }

	String toString(){name}
}
