class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"{
			controller = "home"
			action = "announcement"
		}
		"/home/nearYou"{
			controller = "home"
			action = "near_you"
		}
		"500"(view:'/error')
	}
}
