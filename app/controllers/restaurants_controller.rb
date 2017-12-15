class RestaurantsController < ApplicationController

  skip_before_action :verify_authenticity_token


  def index
    respond_to do |format|
        @restaurants = Restaurant.all_data
        format.json { render :json => @restaurants }
        format.html { render file: Rails.public_path.join("templates","restaurants.html"), layout: true}
      end
  end

  def show
    respond_to do |format|
      @restaurant = Restaurant.find(params[:id])
      format.json { render :json => @restaurant }
      format.html { render :file => Rails.public_path.join("templates","one_restaurant.html"), layout: true}
    end
  end

  def create
    restaurant = Restaurant.create(name: params[:name], description: params[:description], user_id: current_user.id)
    imagge = Image.create(source: params[:image], restaurant_id: restaurant.id)
    redirect_to ("/restaurants")
  end
end
