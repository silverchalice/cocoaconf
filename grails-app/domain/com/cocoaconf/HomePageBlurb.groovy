package com.cocoaconf

class HomePageBlurb {
	Long priority
	String blurb
	Boolean active
	
    static constraints = {
		active()
		priority()
		blurb(maxSize:10000)
    }
}
