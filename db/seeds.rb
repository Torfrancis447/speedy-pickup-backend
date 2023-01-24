# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'destroying seed'

Child.destroy_all
Car.destroy_all
User.destroy_all 
School.destroy_all

Faker::Config.locale = 'en-US'

puts 'creating seeds'

User.create(name: Faker::Name.name, phone_number: Faker::PhoneNumber.cell_phone , photo_id: Faker::LoremFlickr.image , email: Faker::Internet.free_email)


School.create(name: Faker::Educator.primary_school, open:"7:00", close: "5:00", phone_number: Faker::PhoneNumber.cell_phone)
School.create(name: Faker::Educator.primary_school, open:"7:00", close: "5:00", phone_number: Faker::PhoneNumber.cell_phone)

