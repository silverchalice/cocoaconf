package com.cocoaconf


class Presentation {

    Speaker speaker
    String title
    String pAbstract
    String codePath
    String slidesPath
    String shortName
    Integer slot
    Integer track
    Boolean current
    String slug

    static belongsTo = Speaker

    static constraints = {
	    pAbstract maxSize:10000, nullable:true
	    shortName nullable:true
		slot nullable:true
		track nullable:true
		slug nullable:true
    }



    String toString(){ "${title} by ${speaker.firstName} ${speaker.lastName}" }

}
