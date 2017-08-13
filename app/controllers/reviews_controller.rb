class ReviewsController < ApplicationController
  before_action :set_garden

  def new
    @review = @garden.reviews.build
  end

  def create
    @review = Review.new(review_params)
    @review.garden = @garden
    @review.save
    redirect_to garden_path(@garden)
  end

  private
  def set_garden
    @garden = Garden.find(params[:garden_id])
  end
  def review_params
    params.require(:review).permit(:content)
  end
end
