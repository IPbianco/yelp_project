class ReviewsController < ApplicationController
  def index
    @what = 'text'
    # render html: '<p>test</p>'
    @reviews = Review.all
  end

  def show
    render html: '<p>test</p>'
  end
end
