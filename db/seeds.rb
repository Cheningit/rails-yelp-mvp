# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

# :name, :address, :phone_number, :category
# category-> only accepts: chinese italian japanese french belgian
puts "Creating restaurants..."
dishoom = {name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "07740-837861", category: 'belgian'}
pizza_east = {name: "Pizza East", address: "56A Shoreditch High St, USA E1 6PQ", phone_number: "01261-338291", category: 'italian'}
bbq = {name: "BBQ", address: "1C Shoreditch High St, Trivago E1 6PQ", phone_number: "01821-251640", category: 'french'}
cat_and_mouse = {name: "Cat and Mouse", address: "23G Shoreditch High St, Baboom E1 6PQ", phone_number: "07937-718612", category: 'japanese'}
afrika = {name: "Afrika", address: "76 Shoreditch High St, Wakaka E1 6PQ", phone_number: "07528-206865", category: 'chinese'}

[dishoom, pizza_east, bbq, cat_and_mouse, afrika].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
