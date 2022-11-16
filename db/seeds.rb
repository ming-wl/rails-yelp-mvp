# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "01632 960543", category: "chinese"}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "01632 960895", category: "italian"}
the_charming_room = {name: "The Charming Room", address: "72-78 Lamb's Conduit St, London WC1N 3LP", phone_number: "020 7430 1827", category: "belgian"}
the_goat = {name: "The Goat", address: "15 Bridge End, Leeds LS1 7HG", phone_number: "0113 244 5846", category: "french"}
the_chili_bay = {name: "The Chili Bay", address: "62 High Rd, London N22 6DH", phone_number: "0845 755 5555", category: "japanese"}
the_lion = {name: "The Lion", address: "Dowanhill St, Glasgow City G11 5QR", phone_number: "0141 562 3175", category: "italian"}

[dishoom, pizza_east, the_charming_room, the_goat, the_chili_bay, the_lion].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
