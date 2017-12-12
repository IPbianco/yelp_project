class RestaurantsController < ApplicationController

  def new
  end

  def create
    Restaurant.create(name: params[:name], description: params[:description])
  end
end
