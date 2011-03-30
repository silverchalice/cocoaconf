package net.simplycocoa

class Presentation {

    Speaker speaker
    String title
    String abstract

    static constraints = {
	    abstract maxSize:10000, nullable:true
    }
}
