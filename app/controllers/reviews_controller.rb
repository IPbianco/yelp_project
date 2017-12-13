class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    review = Review.last
    @reviews = review.title
  end

  def new

  end

  def create
    @review = Review.create(title: params[:title],
                        description: params[:description],
                        rating: params[:rating], user_id: 2, restaurant_id: 2)
      redirect_to '/reviews'
  end
end
