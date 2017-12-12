class ReviewsController < ApplicationController
  skip_before_action :verify_authenticity_token
  def index
    # @reviews = Review.all
    review = Review.last
    @reviews = review.title
  end

  def new

  end

  def create
    @review = Review.create(title: params[:title],
                        description: params[:description],
                        rating: params[:rating], user_id: 1, restaurant_id: 1)
    p @review
    # if @review.id.nil?
    #   p "jkahsdjkhs",@review
    #   render :action => "new"
    # else
      redirect_to '/reviews'
    # end
  end
end
