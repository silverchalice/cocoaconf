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
		
		"/register"{
			controller = "home"
			action = "register"
		}
		"/about"{
			controller = "home"
			action = "about"
		}
		"/schedule"{
			controller = "home"
			action = "schedule"
		}
		"/partners"{
			controller = "home"
			action = "partners"
		}
		"/team"{
			controller = "home"
			action = "team"
		}
		"/near_you"{
			controller = "home"
			action = "near_you"
		}
		"/schedule_oh"{
			controller = "home"
			action = "schedule_oh"
		}
		"/speakers"{
			controller = "speaker"
			action = "speakers"
		}
        "/sessions"{
      			controller = "session"
      			action = "sessions"
      		}
		"/roundup"{
			controller = "blogLink"
			action = "roundup"
		}

		"500"(view:'/error')
	}
}
