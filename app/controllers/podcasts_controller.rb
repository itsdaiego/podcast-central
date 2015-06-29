class PodcastsController < ApplicationController

  def index
    @podcasts = Podcast.paginate(page: params[:page]).per_page(5)
  end
  def new
    @podcast = new Podcast
  end
  def show
    @podcast = Podcast.find(params[:id])
  end
  def create
    @podcast = Podcast.(podcast_params)
      @podcast.save
  end
  def follow
    @podcast = Podcast.find(params[:id])
    current_user.podcasts << @podcast
    redirect_to @podcast
  end
  def unfollow
    @podcast = Podcast.find(params[:id])
    current_user.podcasts.destroy(@podcast)
    redirect_to @podcast
  end
  private
  def podcast_params
    params.require(:podcast).permit(:name,:category,:description,:url, :image, :remote_image_url)
  end
end
