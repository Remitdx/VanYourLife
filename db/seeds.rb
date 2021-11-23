# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



puts 'Cleaning database...'
Van.destroy_all if Rails.env.development?
User.destroy_all if Rails.env.development?

puts "Creating random users !"

user1 = User.create!(email: "florimond@gmail.com", password: "azerty", first_name: "Florimond", last_name: "Billiau", driving_license: "false", address: "rue Royale")
user2 =User.create!(email: "florimonde@gmail.com", password: "azerty", first_name: "Florimonde", last_name: "Billiot", driving_license: "false", address: "rue de la soif")
user3 =User.create!(email: "fx@gmail.com", password: "azerty", first_name: "FX", last_name: "Wagon", driving_license: false, address: "Champs Elysees")

puts "Creating awesome vans !"

Van.create!(user: user1, nb_seats: 5, brand: "Volkswagen", description: "Escape", localisation: "Lille", van_url: "https://images.unsplash.com/photo-1527786356703-4b100091cd2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dmFuJTIwbGlmZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60")
Van.create!(user: user2, nb_seats: 4, brand: "Toyota", description: "Travel", localisation: "Paris", van_url: "https://images.unsplash.com/photo-1610851252127-85442ca5528e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHZhbiUyMGxpZmV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
Van.create!(user: user3, nb_seats: 3, brand: "Mercedes", description: "City life", localisation: "New-York", van_url: "https://images.unsplash.com/photo-1519589901912-610a6ac9a814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHVyYmFuJTIwdmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
Van.create!(user: user4, nb_seats: 5, brand: "Volkswagen", description: "Friends", localisation: "Montréal", van_url: "https://images.unsplash.com/photo-1561361513-2d000a50f0dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")

puts "Finished!"
