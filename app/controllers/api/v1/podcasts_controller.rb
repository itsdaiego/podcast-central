module Api
	module V1
		class PodcastsController < ApplicationController
			respond_to :json

			def index
				begin
					podcast = Podcast.all
					respond_with podcast
				rescue
					respond_with "A ninja captured my podcast list"
				end
			end
			def show
				begin
					podcast = Podcast.find(params[:id])
					respond_with podcast
				rescue
					respond_with "A ninja captured this podcast"
				end
			end
		end
	end
end
