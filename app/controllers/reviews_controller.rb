class ReviewsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    render json: { reviews: @restaurant.reviews }
  end

  def create

    rating = params[:rating].to_i
    restaurant_id = params[:restaurant].to_i

    @review = Review.create(title: params[:title],
                        description: params[:description],
                        rating: rating,
                        user_id: current_user.id,
                        restaurant_id: restaurant_id)

    # redirect_to "/restaurants/#{params[:restaurant]}"
  end
end
