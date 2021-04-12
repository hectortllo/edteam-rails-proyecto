require 'faker'

Hotel.create!(
  total_rooms: rand(50),
  address: Faker::Address.full_address,
  name: Faker::Restaurant.name
)

puts "Hotel creado"
