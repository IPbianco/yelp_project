feature "Adding new restaurant" do
  scenario "See the form to enter data" do
    visit("/restaurants/new")
    expect(page).to have_content("Welcome")
  end
end
