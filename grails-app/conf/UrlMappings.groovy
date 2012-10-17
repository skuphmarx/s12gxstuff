class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

	//	"/"(view:"/index")
        "/"(controller: "springTweets",action: "showTweets")
		"500"(view:'/error')
	}
}
