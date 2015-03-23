class PodcastsController < ApplicationController
    def index
    	
    end
	def new
		@podcast = Podcasts.new
	end
end
