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
        "/sessions"(controller:'session', action:'sessions')
	    "/about"(controller:'home', action:'about')
	    "/register"(controller:'home', action:'register')
	    "/schedule"(controller:'home', action:'schedule')
		"/"(controller:'home', action:"announcement")
		"500"(view:'/error')
	}
}
