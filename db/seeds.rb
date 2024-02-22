# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all
puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "0102030405", category: "chinese"}
pizza_east =  {name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "0106070809", category: "italian"}
alicheur = {name: "L'Alicheur", address: "32 rue Saint-Maur, 75011 Paris", phone_number: "0111223344", category: "french"}
fries = {name: "Fries", address: "110 quai de Jemmapes, 75010 Paris", phone_number: "0155667788", category: "belgian"}
sushi = {name: "Sushi", address: "22, rue des Archives, 75003 Paris", phone_number: "0123456789", category: "japanese"}
[dishoom, pizza_east, alicheur, fries, sushi].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
