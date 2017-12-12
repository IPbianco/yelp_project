require 'rails_helper'

feature 'Create a review' do
  scenario 'fill in the form' do
    visit("/review/new")
    fill_in 'title', :with 'title'
    fill_in 'description', :with 'description'
    fill_in 'rating', :with 5
    click_button 'submit'
    expect(page).to have_content('test')
  end
end
