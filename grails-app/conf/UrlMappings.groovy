class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

		"/"{
			controller = "home"
			action = "index"
		}
		
		"/alt"{
			controller = "conference"
			action = "alt"
		}

		"/family"{
			controller = "home"
			action = "kleinfamily"
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
		"/$tinyName"{
            controller = "conference"
            action = "sendToHome"
            id = "$tinyName"
		}
		"/$tinyName/home."{
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
		"/$tinyName/speakers/$id"{
            controller = "conference"
            action = "speakerDetails"
		}
		"/$tinyName/sessions"{
            controller = "conference"
            action = "sessions"
		}
		"/$tinyName/sessions/$slug"{
            controller = "conference"
            action = "sessionDetails"
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
		"/$tinyName/pickSessions"{
            controller = "conference"
            action = "pickSessions"
            id = "$tinyName"
		}
		"/speaking/$tinyName"{
			controller = "conference"
			action = "speaking"
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
		"/sponsor"{
			controller = "home"
			action = "prospectus"
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
        "/speaker/$id"{
	        controller = "speaker"
	        action = "viewDetails"
        }
        "/profile/$lastName/$firstName"{
	        controller = "speaker"
	        action = "viewDetails"
        }
        "/prizes"{
            controller = "prize"
            action = "prizes"
        }
        "/chicago_slides"{
            controller = "home"
            action = "chicago_slides"
        }
        "/events"{
            controller = "home"
            action = "events"
        }
        "/wwdcphotos"{
        	controller = "wwdcPhoto"
        	action = "list"
        }
        "/wwdc-photos"{
        	controller = "wwdcPhoto"
        	action = "list"
        }
		"/speaker.json"{
			controller = "remote"
			action = "getSpeaker"
		}
		"/session.json"{
			controller = "remote"
			action = "getSession"
		}
		"500"(view:'/error')
	}
}
