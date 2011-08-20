class UrlMappings {

	static mappings = {

		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}
		
	    name conf: "/conf/$tinyName"{
	        controller = "conference"
	        action = "show"
	    }
	    name sessionList: "/conf/$tinyName/sessions"{
	        controller = "conference"
	        action = "sessions"
	    }
	    "/speakers"(controller:'speaker', action:'speakers')
	    "/speaker/details/$id"(controller:'speaker', action:'viewDetails')
        "/sessions"(controller:'session', action:'sessions')
	    "/about"(controller:'home', action:'about')
	    "/register"(controller:'home', action:'register')
	    "/schedule"(controller:'home', action:'schedule')
		"/partners"(controller:'home', view:'partners')
		"/blog/roundup"(controller:'blogLink', action:'roundup')
		"/"(controller:'home', action:"announcement")
		"500"(view:'/error')
	}
}
