class UsersController < ApplicationController
    include SessionsHelper

    def index
    	@users = User.paginate(page: params[:page])
    end
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			sign_in @user
			flash[:success] = "User Created!"
			redirect_to @user
		else
			render 'new'
		end
	end
	def show
	    @user = User.find(params[:id])
	end
	private
	def user_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation)
	end
end

