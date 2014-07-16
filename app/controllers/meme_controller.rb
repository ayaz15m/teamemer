class MemeController < ApplicationController
  before_action :authenticate_user!

  def index
    @meme = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def create

     meme = meme_params

    @meme = Meme.create user: current_user, photo: meme[:photo], category: meme[:category]

     if @meme.save
        redirect_to root_path
      else
        render :new
      end
  end
  private
    def meme_params
      params.require(:meme).permit(:photo, :category)
    end
end
