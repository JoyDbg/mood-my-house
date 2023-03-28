class MoodboardsController < ApplicationController
  def index
    @moodboards = Moodboard.all
  end

  def new
    @moodboard = Moodboard.new
  end

  def create
    @moodboard = Moodboard.new(moodboard_params)
    @moodboard.save
    redirect_to moodboard_path(@moodboard)
  end

  def show
    @moodboard = moodboard.find(params[:id])
    @bookmark = Bookmark.new
  end

  def destroy
    @moodboard = moodboard.find(params[:id])
    @moodboard.destroy
    redirect_to moodboards_path, status: :see_other
  end

  private

  def moodboard_params
    params.require(:moodboard).permit(:title, :comment)
  end
end
