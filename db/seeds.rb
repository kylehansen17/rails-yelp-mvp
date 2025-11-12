require 'faker'

puts "Cleaning the DB..."
Restaurant.destroy_all

puts "Creating restaurants..."
5.times do
  Restaurant.create!(
    name: Faker::Games::ElderScrolls.creature,
    phone_number: Faker::PhoneNumber.phone_number,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample
  )
end
puts "...created #{Restaurant.count} restaurants"
