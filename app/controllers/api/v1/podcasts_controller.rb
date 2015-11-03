module Api
	module V1
		class PodcastsController < ApplicationController
			respond_to :json

			def index
				begin
					respond_with Podcast.all
				rescue
					respond_with "A ninja captured my podcast list"
				end
			end

			def show
				begin
					respond_with Podcast.find(params[:id])
				rescue
					respond_with "A ninja captured this podcast"
				end
			end
		end
	end
end
