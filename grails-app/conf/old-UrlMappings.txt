class UrlMappings {

	static mappings = {
		"/"{
			controller = "home"
			action = "staytuned"
		}
    "404"(controller:"home", action:"notfound")
	}
}
