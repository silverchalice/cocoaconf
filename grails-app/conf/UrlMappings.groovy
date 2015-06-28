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

		"/yosemite"{
			controller = "home"
			action = "yosemite"
      //action = "yosemiteSignup"
		}

		"/yosemite-2015"{
			controller = "home"
			action = "yosemiteTwentyFifteen"
		}

		"/select_activities/$id"{
			controller = "home"
			action = "select_activities"
		}

		"/podcast/$id?"{
			controller = "podcast"
			action = "index"
		}

		"/videos"{
			controller = "video"
			action = "index"
		}

		"/video/$slug"{
			controller = "video"
			action = "index"
      slug = "$slug"
		}

		"/family"{
			controller = "home"
			action = "kleinfamily"
		}

		"/credits"{
			controller = "home"
			action = "credits"
		}

		"/training/$slug?"{
			controller = "term"
			action = "index"
		}

		"/university/$slug?"{
			controller = "home"
			action = "university"
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
            constraints {
                tinyName(validator: {
                    return !(it in ['console', 'videos'])
                })
            }
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
        "/speaker/create"{
            controller = "speaker"
            action = "create"
        }
        "/speaker/edit"{
            controller = "speaker"
            action = "edit"
        }

        "/speaker/save"{
            controller = "speaker"
            action = "save"
        }

        "/speaker/update"{
            controller = "speaker"
            action = "update"
        }
        "/speaker/list"{
            controller = "speaker"
            action = "list"
        }
        "/speaker/index"{
            controller = "speaker"
            action = "index"
        }
        "/speaker/delete"{
            controller = "speaker"
            action = "delete"
        }
        "/speaker/show"{
            controller = "speaker"
            action = "show"
        }
        "/speakers/$id"{
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
		"/speaker-availability/$speakerHash"{
			controller = "speaker"
			action = "availability"
		}
		"500"(view:'/error')
	}
}
