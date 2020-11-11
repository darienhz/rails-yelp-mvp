# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating restaurants'
10.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    category: %w[chinese italian japanese french belgian].sample,
    address: Faker::Address.street_address
  )
  3.times do
    review = Review.create!(
      content: Faker::Restaurant.review,
      rating: rand(1..5),
      restaurant_id: restaurant.id
    )
  end
  puts "Restaurant #{restaurant.id} is created"
end
puts 'Done'
