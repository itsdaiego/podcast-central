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
		end
	end
end 