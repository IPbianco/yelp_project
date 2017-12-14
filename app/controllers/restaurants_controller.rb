class RestaurantsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @restaurants = Restaurant.all.reverse
  end

  def new

  end

  def create

    rest = Restaurant.create(name: params[:name], description: params[:description], user_id: 1)
    p ':::::::::::::', rest
    imagge = Image.create(source: params[:image], restaurant_id: rest.id)
    p '::::::::::' , imagge
    redirect_to ("/restaurants")
  end

end
