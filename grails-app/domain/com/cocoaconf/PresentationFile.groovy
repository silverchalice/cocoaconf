package com.cocoaconf

class PresentationFile {
    Conference conference
    Speaker speaker
    Presentation presentation
    String link
    String type

    static constraints = {
	    conference()
	    speaker()
	    presentation()
	    link()
	    type(nullable:true, inList:['Slides', 'Code'])
    }
}
