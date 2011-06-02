package com.cocoaconf


class Presentation {

    Speaker speaker
    String title
    String pAbstract
    String codePath
    String slidesPath

    static constraints = {
	    pAbstract maxSize:10000, nullable:true
    }



    String toString(){ "${title} by ${speaker.firstName} ${speaker.lastName}" }

}
