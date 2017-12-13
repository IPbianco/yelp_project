require 'rails_helper'

feature "Adding new restaurant" do

  scenario "Enter restaurant name" do
    visit("/restaurants/new")
    fill_in "name", with: "Ignacio Fish n Chips"
    fill_in "description", with: "Best in town, free for Majd"
    click_on("Add")
    expect(page).to have_content("Ignacio Fish n Chips")
  end

  scenario "Enter restaurant description" do
    visit("/restaurants/new")
    fill_in "name" , with: "Ignacio Fish n Chips"
    fill_in "description" , with: "Best in town, free for Majd"
    click_on("Add")
    expect(page).to have_content("Best in town, free for Majd")
  end
end

# feature "Showing restaurants inreverse order" do
#
#   scenario "Enter restaurant name" do
#     # visit("/restaurants/new")
#     # fill_in "name", with: "Ignacio Fish n Chips"
#     # fill_in "description", with: "Best in town, free for Majd"
#     # click_on("Add")
#     # expect(page).to have_content("Ignacio Fish n Chips")
#   end
# end
