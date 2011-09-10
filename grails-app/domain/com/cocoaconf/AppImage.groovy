package com.cocoaconf

class AppImage {
	String caption
	byte[] image
	
	static belongsTo = [app:ShowCaseApp]
	
    static constraints = {
		caption(nullable:true, blank:true)
		image(maxSize:2000000)
    }
}
