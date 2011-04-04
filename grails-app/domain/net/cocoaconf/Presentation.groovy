package net.cocoaconf

class Presentation {

    Speaker speaker
    String title
    String pAbstract

    static constraints = {
	    pAbstract maxSize:10000, nullable:true
    }

}
