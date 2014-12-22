    class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view:"/index")
		"/"(controller: 'index') //for i18n the index page - report list as start page
        "500"(view:'/error')
        "404"(view: '/404')

        //added to allow access login and logout controllers
        //"/login/$action?"(controller: "login")
        //"/logout/$action?"(controller: "logout")
		
	}
}
