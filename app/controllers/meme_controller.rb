class MemeController < ApplicationController
  before_action :authenticate_user!

  def index

    @memes = Meme.all
    @meme = Meme.new

    @search = Search.new(params[:search])
    @memes = @search.search

    if params[:search]
      @category = search_params[:category]
      @categories = Meme.where(category: @category)

      render :display
      display(@categories)
    end
  end

  def new
    @meme = Meme.new
  end

  def display(category)
    @categories = category
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

  private
    def search_params
      params.require(:search).permit(:category)
    end
end
