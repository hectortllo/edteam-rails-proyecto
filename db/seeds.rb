require 'faker'

Hotel.create!(
  total_rooms: rand(50),
  address: Faker::Address.full_address,
  name: Faker::Restaurant.name
)

puts "Hotel creado"

25.times do
  Room.create(
    length: rand(10),
    width: rand(10),
    taken: rand(2),
    image: Faker::Internet.url,
    hotel_id: Hotel.first.id
  )
end

puts "Habitaciones creadas"