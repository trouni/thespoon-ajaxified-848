puts "Destroy all the restaurants"
Restaurant.destroy_all

puts "Create 40 restos"
40.times do 
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    description: Faker::Restaurant.description,
    rating: rand(1..5)
  )
end

puts "Done!"