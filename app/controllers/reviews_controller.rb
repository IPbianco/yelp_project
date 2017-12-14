class ReviewsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    render json: { reviews: @restaurant.reviews }
  end

  def create
    @review = Review.create(title: params[:title],
                        description: params[:description],
                        rating: params[:rating],
                        user_id: current_user.id,
                        restaurant_id: params[:restaurant])
    redirect_to "/restaurants/#{params[:restaurant]}"
  end
end
