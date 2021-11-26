# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


puts 'Cleaning database...'
Van.destroy_all # if Rails.env.development?
User.destroy_all # if Rails.env.development?

puts "Creating random users !"

user1 = User.create!(email: "florimond@gmail.com", password: "azerty", first_name: "Florimond", last_name: "Billiau", driving_license: "false", address: "rue Royale")
user2 = User.create!(email: "florimonde@gmail.com", password: "azerty", first_name: "Florimonde", last_name: "Billiot", driving_license: "false", address: "rue de la soif")
user3 = User.create!(email: "fx@gmail.com", password: "azerty", first_name: "FX", last_name: "Wagon", driving_license: false, address: "Champs Elysees")

puts "Creating awesome vans !"

van1 = Van.new(user: user1, nb_seats: 5, brand: "Volkswagen", description: "Escape", localisation: "Lille")
file1 = URI.open('https://images.unsplash.com/photo-1527786356703-4b100091cd2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8dmFuJTIwbGlmZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60')
van1.photo.attach(io: file1, filename: 'van1.jpeg', content_type: 'image/jpeg')
van1.save!

van2 = Van.new(user: user2, nb_seats: 4, brand: "Toyota", description: "Travel", localisation: "Paris")
file2 = URI.open("https://images.unsplash.com/photo-1610851252127-85442ca5528e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHZhbiUyMGxpZmV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60")
van2.photo.attach(io: file2, filename: 'van2.jpeg', content_type: 'image/jpeg')
van2.save!

van3 = Van.new(user: user3, nb_seats: 3, brand: "Mercedes", description: "City life", localisation: "New-York")
file3 = URI.open("https://images.unsplash.com/photo-1519589901912-610a6ac9a814?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fHVyYmFuJTIwdmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
van3.photo.attach(io: file3, filename: 'van3.jpeg', content_type: 'image/jpeg')
van3.save!

van4 = Van.new(user: user3, nb_seats: 5, brand: "Volkswagen", description: "Friends", localisation: "Montréal")
file4 = URI.open("https://images.unsplash.com/photo-1561361513-2d000a50f0dc?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dmFufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60")
van4.photo.attach(io: file4, filename: 'van4.jpeg', content_type: 'image/jpeg')
van4.save!

puts "Finished!"
