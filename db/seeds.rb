# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts "Deleting all hotels....."
Hotel.destroy_all

puts "Deleting existing users...."
User.destroy_all

puts "Creating new users / Hotels"
15.times do
  User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, mail: Faker::Internet.email)
  Hotel.create!(name: Faker::Company.name, address: Faker::Address.street_address, rating: rand(2.5...5))
end

puts "Done!"
