package com.cocoaconf

class HomePageBlurb {
	Long priority = 0
	String blurb
	Boolean active = false
	
    static constraints = {
		active()
		priority()
		blurb(maxSize:10000)
    }
}
