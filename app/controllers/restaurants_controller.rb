class RestaurantsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    if user_signed_in?
      @restaurants = Restaurant.all.reverse
    else
      redirect_to ("/users/sign_in")
    end
  end

  def new

  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def create
    Restaurant.create(name: params[:name], description: params[:description], user_id: current_user.id)
    redirect_to ("/restaurants")
  end

end