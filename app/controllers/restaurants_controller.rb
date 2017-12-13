class RestaurantsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @restaurants = Restaurant.all.reverse
  end

  def new

  end

  def create
    Restaurant.create(name: params[:name], description: params[:description], user_id: 1)
    redirect_to ("/restaurants")
  end

end
