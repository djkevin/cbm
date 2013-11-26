class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.${format})?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
		"/"(controller: 'index') //for i18n the index page
        "500"(view:'/error')
		
	}
}
