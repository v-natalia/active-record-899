# This is where you can create initial data for your app.
# puts 'Creating restaurants...'
# tour_d_argent = Restaurant.new(name: "La Tour d'Argent")
# tour_d_argent.save!

# chez_gladines = Restaurant.new(name: "Chez Gladines")
# chez_gladines.save!
# puts 'Finished!'

require 'faker'

puts 'Creating 100 fake restaurants...'
100.times do
  restaurant = Restaurant.new(
    name:    Faker::Company.name,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    rating:  rand(0..5)
  )
  restaurant.save!
end
puts 'Finished!'
