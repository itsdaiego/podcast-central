module Api
	module V1
		class UsersController < ApplicationController
			respond_to :json

			def index
				begin
					respond_with User.find(params[:id])

				rescue
					respond_with "User not found"
				end
			end

			def followers
				begin
					user = User.find(params[:id])
					respond_with user.followers
				rescue
					respond_with "Something went wrong"
				end
			end

			def following
				begin
					user = User.find(params[:id])
					respond_with user.following
				rescue
					respond_with "Something went wrong"
				end
			end
		end
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
			def index
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
