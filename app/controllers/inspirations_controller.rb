class InspirationsController < ApplicationController
  def index
    @inspirations = Inspiration.all
  end

  def new
    @inspiration = Inspiration.new
  end

  def create
    @inspiration = Inspiration.new(inspiration_params)
    @inspiration.save
    redirect_to inspiration_path(@inspiration)
  end

  def show
    @inspiration = inspiration.find(params[:id])
    @bookmark = Bookmark.new
  end

  def destroy
    @inspiration = inspiration.find(params[:id])
    @inspiration.destroy
    redirect_to inspirations_path, status: :see_other
  end

  private

  def inspiration_params
    params.require(:inspiration).permit(:title, :comment)
  end
end
