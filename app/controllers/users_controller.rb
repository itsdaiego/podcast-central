class UsersController < ApplicationController
	before_action :signed_in_user,
	only: [:index, :edit, :update, :destroy, :following, :followers]

	before_action :correct_user,   only: [:edit, :update]

	def index
		@users = User.paginate(page: params[:page]).per_page(5)
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(user_params)
		if @user.save
			sign_in_ @user
			flash[:success] = "User Created!"
			redirect_to @user
		else
			render 'new'
		end
	end
	def show
		@user = User.find(params[:id])
	end
	def edit
		@user = User.find(params[:id])
	end
	def update
		@user = User.find(params[:id])
		if @user.update_attributes(user_params)
			flash[:success] = "Profile updated"
			redirect_to @user
		else
			render 'edit'
		end
	end

	def following
		@title = "Following"
		@user  = User.find(params[:id])
		@users = @user.following.paginate(page: params[:page])
		render 'show_follow'
	end

	def followers
		@title = "Followers"
		@user  = User.find(params[:id])
		@users = @user.followers.paginate(page: params[:page])
		render 'show_follow'
	end

	def podcasts
		@user = User.find(params[:id])
		@title = @user.name
		@podcasts = @user.podcasts.paginate(page: params[:page])
	end

	private
	def user_params
		params.require(:user).permit(:name,:email,:password,:password_confirmation)
	end
	def correct_user
		@user = User.find(params[:id])
		redirect_to(root_url) unless current_user?(@user)
	end
end
