# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
names = %w[Paul Peter Mike Linda Rose John Mary Nicole Jack Frida]

10.times do |index|
  user = User.create(name: "#{names[index]}", email: "#{names[index]}_0#{index}@gmail.com", password: "secret_password")
  restaurant = Restaurant.create(name: "Majd's Fried Chicken (#{index})", description: "Nice food", user_id: user.id)
end

reviews = 20.times.map do |index|
  rando = rand(1..9)
  Review.create(title: "Nice place", description: "Majd is great", rating: rando - 1, user_id: rando, restaurant_id: rando + 1)
end

user = User.create(name: "Eva", email: "baguette@frenchy.com", password:"123")
restaurant = Restaurant.create(name: "Eva's", description: "baguettes ONLY", user_id: user.id)
