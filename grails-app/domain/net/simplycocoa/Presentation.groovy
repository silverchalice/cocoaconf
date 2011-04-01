package net.simplycocoa

class Presentation {

    Speaker speaker
    String title
    String presentationAbstract

    static constraints = {
	    presentationAbstract maxSize:10000, nullable:true
    }
}
