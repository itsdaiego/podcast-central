class PodcastsController < ApplicationController
  def index
    @podcasts = Podcast.paginate(page: params[:page]).per_page(5)
  end
  def new
    @podcast = new Podcast
  end
  def create
    @podcast = Podcast.(podcast_params)
      @podcast.save
  end
  private
  def podcast_params
    params.require(:podcast).permit(:name,:category,:description,:url)
  end
end
