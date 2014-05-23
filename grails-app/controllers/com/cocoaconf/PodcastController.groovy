package com.cocoaconf

class PodcastController {

    def index() {
      params.with {
        max = Math.min(params?.max ? params?.int('max') : 5, 100)
        sort = 'episodeNumber'
        order = 'desc'
      }
    	def episodes = []
    	if (params.id){
    	  episodes << Episode.findByEpisodeNumber(params.id)
    	} else {
    		episodes = Episode.list(params)
    	}
    	[episodes:episodes, episodeInstanceTotal: Episode.count()]
    }
}
