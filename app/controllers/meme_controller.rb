class MemeController < ApplicationController
  before_action :authenticate_user!

  def index
    @meme = Meme.all
  end

  def new
    @meme = Meme.new
  end

  def create

    @meme = Meme.new meme_params
    @meme.user = current_user

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
