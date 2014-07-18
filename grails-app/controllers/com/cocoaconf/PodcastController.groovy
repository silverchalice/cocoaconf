package com.cocoaconf

class PodcastController {

    def index() {
      params.with {
        max = Math.min(params?.max ? params?.int('max') : 5, 100)
        sort = 'episodeNumber'
        order = 'desc'
      }
      def specificEpisode
    	if (params.id){
        if(!params.id?.isLong()){
          println "id in Podcast index action was not Long (${params.id}). redirecting"
          redirect action: "index"
          return
        }
        specificEpisode = Episode.findByEpisodeNumber(params.id)
      } 
    	def episodes = []
      if(specificEpisode){
        println "there was one"
    	  episodes << specificEpisode
    	} else {
    		episodes = Episode.list(params)
        specificEpisode = Episode.last(sort: 'episodeNumber')
    	}
      //specificEpisode.viewCount++
      //specificEpisode.save()

    	[episodes:episodes, isList: params.id ? false : true, episodeInstanceTotal: Episode.count()]
    }
}
