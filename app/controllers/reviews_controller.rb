class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    review = Review.last
    @reviews = review.title
  end

  def new

  end

  def create
    p "PARAMAMATEEREER", params[:restaurant]
    @review = Review.create(title: params[:title],
                        description: params[:description],
<<<<<<< HEAD
                        rating: params[:rating],
                        user_id: current_user.id,
                        restaurant_id: params[:restaurant])

    redirect_to "/restaurants/#{params[:restaurant]}"
=======
                        rating: params[:rating], user_id: 2, restaurant_id: 2)
      redirect_to '/reviews'
>>>>>>> cleaner_and_images
  end
end
