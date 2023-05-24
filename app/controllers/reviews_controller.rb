class ReviewsController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new
  end

  def create
    @review = Review.find(params[:reviews_id])
    @review = Review.new(review_params)
    @review.restaurant = @review
    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render "reviews/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
