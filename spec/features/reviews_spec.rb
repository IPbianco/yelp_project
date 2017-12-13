require 'rails_helper'

  # before(:all) do
  #   user = User.create(name: "Eva", email: "baguette@frenchy.com", password:"123")
  #   Restaurant.create(name: "Eva's", description: "baguettes ONLY", user_id: user.id)
  # end

feature 'Create a review' do
  scenario 'fill in the form' do
    user = User.create(name: "Eva", email: "baguette@frenchy.com", password:"123")
    Restaurant.create(name: "Eva's", description: "baguettes ONLY", user_id: user.id)
    visit("/reviews/new")
    fill_in 'title', with: 'title'
    fill_in 'description', with: 'description'
    fill_in 'rating', with: 5
    click_button 'Submit'
    expect(page).to have_content('title')
  end
end
