package com.cocoaconf

class WwdcPhoto {

    Integer year
    String imagePath
    String caption
    String url
    Date dateCreated

    static constraints = {
    	caption nullable:true
    }
}
