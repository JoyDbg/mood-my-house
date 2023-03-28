class BookmarkController < ApplicationController
  before_action :set_bookmark, only: :destroy
  before_action :set_list, only: [:new, :create]

  def new
    @bookmark = Bookmark.new
  end

  def create
    @bookmark = Bookmark.new(bookmark_params)
    @bookmark.list = @moodboard
    if @bookmark.save
      redirect_to list_path(@moodboard)
    else
      render :new
    end
  end

  def destroy
    @bookmark.destroy
    redirect_to list_path(@bookmark.list), status: :see_other
  end

  private
  def set_bookmark
    @bookmark = Bookmark.find(params[:id])
  end

  def set_moodboard
    @moodboard = Moodboard.find(params[:moodboard_id])
  end

  def bookmark_params
    params.require(:bookmark).permit(:comment, :inspiration_id)
  end
end
