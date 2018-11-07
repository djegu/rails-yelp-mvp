class ReviewsController < ApplicationController


  def new
    set_review
    # GET  /restaurants/:restaurant_id/reviews/new
    # Render the form for creating a review
    # needed for simple form
    @review = Review.new
  end

  def create
    set_review
    # POST /restaurants/:restaurant_id/reviews
    @review = Review.new(review_params)

    @review.restaurant = @restaurant

    if @review.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def set_review
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
