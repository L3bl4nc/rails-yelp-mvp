puts "Cleaning up data base"
Restaurant.destroy_all
puts "My database is clean"

puts "Creating restaurants"
5.times do
  restaurant = Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample,
    phone_number: Faker::PhoneNumber.phone_number
  )
  puts "Restaurant #{restaurant.id} is created"
end

puts "Done!"