class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"{
			controller = "blogLink"
			action = "roundup"
		}
		
		"/register"{
			controller = "conference"
			action = "register"
            tinyName = "dc-2012"
		}
		"/$tinyName/home"{
            controller = "conference"
            action = "home"
            id = "$tinyName"
		}
		"/$tinyName/schedule"{
            controller = "conference"
            action = "schedule"
            id = "$tinyName"
		}
		"/$tinyName/speakers"{
            controller = "conference"
            action = "speakers"
		}
		"/$tinyName/sessions"{
            controller = "conference"
            action = "sessions"
		}
		"/$tinyName/venue"{
            controller = "conference"
            action = "venue"
            id = "$tinyName"
		}
		"/$tinyName/partners"{
            controller = "conference"
            action = "partners"
            id = "$tinyName"
		}
		"/$tinyName/register"{
            controller = "conference"
            action = "register"
            id = "$tinyName"
		}
		"/$tinyName/slides"{
            controller = "conference"
            action = "slides"
            id = "$tinyName"
		}
        /* taking this out until we
           have time to add text to
           the About page
		"/about"{
			controller = "home"
			action = "about"
		}
        */
		"/schedule"{
			controller = "conference"
			action = "schedule"
			id="4"
		}
		"/partners"{
			controller = "home"
			action = "partners"
		}
		"/team"{
			controller = "home"
			action = "team"
		}
		"/schedule/columbus"{
			controller = "home"
			action = "schedule_oh"
		}
		"/schedule/raleigh"{
			controller = "home"
			action = "schedule_raleigh"
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
		"/next"{
			controller = "home"
			action = "nearYou"
		}
		"/mugshots"{
			controller = "mugShot"
			action = "list"
		}
        "/blog"{
            controller = "post"
            action = "list"
        }
        "/blog/$slug"{
            controller = "post"
            action = "show"
        }
        "/feed"{
            controller = "post"
            action = "feed"
        }
        "/prizes"{
            controller = "prize"
            action = "prizes"
        }
        "/chicago_slides"{
            controller = "home"
            action = "chicago_slides"
        }
		"500"(view:'/error')
	}
}
