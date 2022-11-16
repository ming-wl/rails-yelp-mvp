class ReviewsController < ApplicationController
  before_action :set_restaurant, only: %i[new create]

  def new
    @review= Review.new
  end

  def create
    @review = Review.new(params.require(:review).permit(:rating, :content))
    @review.restaurant = @restaurant
    @review.save

    redirect_to restaurants_path
  end

private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
