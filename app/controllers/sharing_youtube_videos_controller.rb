class SharingYoutubeVideosController < ApplicationController
  before_action :init_sharing_youtube_video, only: %i[new create]

  # GET /sharing_youtube_videos
  def index
    @sharing_youtube_videos = SharingYoutubeVideo.all
  end

  def new
    @sharing_youtube_video = SharingYoutubeVideo.new
  end

  # POST /sharing_youtube_videos
  def create
  end

  private
  def init_sharing_youtube_video
    @video = SharingYoutubeVideo.new
  end
end
