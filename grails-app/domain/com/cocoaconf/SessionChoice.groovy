package com.cocoaconf

class SessionChoice {
	Boolean session1 = false
	Boolean session2 = false
	Boolean session3 = false
	Boolean session4 = false
	Boolean session5 = false
	Boolean session6 = false
	Boolean session7 = false
	Boolean session8 = false
	Boolean session9 = false
	Boolean session10 = false 
	Boolean session11 = false
	Boolean session12 = false
	Boolean session13 = false
	Boolean session14 = false
	Boolean session15 = false
	Boolean session16 = false
	Boolean session17 = false
	Boolean session18 = false
	Boolean session19 = false
	Boolean session20 = false
	Boolean session21 = false
	Boolean session22 = false
	Boolean session23 = false
	Boolean session24 = false
	Boolean session25 = false
	Boolean session26 = false
	Boolean session27 = false
	Boolean session28 = false
	Boolean session29 = false
	Boolean session30 = false

	static belongsTo = [user:User]
	
	Boolean checkProp(String propName){
		return self."${propName}"
	}
}
