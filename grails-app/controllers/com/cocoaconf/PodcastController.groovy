package com.cocoaconf

class PodcastController {

    def index() {
    	def episodes = []
    	if (params.id){
    	  episodes << Episode.findByEpisodeNumber(params.id)
    	} else {
    		episodes = Episode.list(sort:'episodeNumber', order: 'desc')
    	}
    	[episodes:episodes]
    }
}
