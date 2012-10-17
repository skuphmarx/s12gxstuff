import groovy.json.JsonSlurper

class SpringTweetsController {

    def showTweets = {
        def qs = ['spring2gx','springone','spring','cloud%20foundry']
        def query =''
        def json
        def inc = [params.int('show2gx'),params.int('showOne'),params.int('showSpring'),params.int('cloudFound')]

        for(i in 1..qs.size()) {
           if (inc[i-1]) {
               query = "${query}${(query)? '%20OR%20':''}${qs[i-1]}"
           }
        }

        if(!query) {
            query = "spring2gx"
            inc[0] = 1
        }


        try {

          def search = new URL("http://search.twitter.com/search.json?q=${query}&rpp=50&include_entities=true&with_twitter_user_id=true&result_type=mixed").text


          def jsonSlurper = new JsonSlurper()
          json = jsonSlurper.parseText(search)

        } catch (Exception e) {
            println e.message
        }


        [results: json?.results, check2gx:inc[0],checkone:inc[1],checkspring:inc[2],checkcloud:inc[3]]
    }

}