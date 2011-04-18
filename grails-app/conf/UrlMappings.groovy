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

		"/"(controller:'home', action:"announcement")
		"500"(view:'/error')
	}
}
