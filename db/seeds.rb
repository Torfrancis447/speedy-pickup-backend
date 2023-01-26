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

s1 = School.create(name: Faker::Educator.primary_school, open:"7:00", close: "5:00", phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)

s2 = School.create(name: Faker::Educator.primary_school, open:"7:00", close: "5:00", phone_number: Faker::PhoneNumber.cell_phone, address: Faker::Address.full_address)

p1 = User.create(user_name: "keffdu", password: "1111" , password_confirmation: "1111" , name: Faker::Name.name, acct_type: "Parent", phone_number: Faker::PhoneNumber.cell_phone , photo_id: Faker::LoremFlickr.image , email: Faker::Internet.free_email)

p2 = User.create(user_name: "tor_rent", password: "1111" , password_confirmation: "1111" , name: Faker::Name.name, acct_type: "Parent", phone_number: Faker::PhoneNumber.cell_phone , photo_id: Faker::LoremFlickr.image , email: Faker::Internet.free_email)

t1 = User.create(user_name: "tor_ture", password: "1111" , password_confirmation: "1111" , name: Faker::Name.name, acct_type: "Teacher", phone_number: Faker::PhoneNumber.cell_phone , photo_id: Faker::LoremFlickr.image , email: Faker::Internet.free_email, school_id: s1.id)

t2 = User.create(user_name: "tor_rible", password: "1111" , password_confirmation: "1111" , name: Faker::Name.name, acct_type: "Teacher", phone_number: Faker::PhoneNumber.cell_phone , photo_id: Faker::LoremFlickr.image , email: Faker::Internet.free_email, school_id: s2.id)


Child.create(parent_id:p1.id, teacher_id:t1.id, name: Faker::Name.name, image: Faker::LoremFlickr.image, dob:"12/25/2012", gender:"Female", notes: "Allergic to swag", pick_up: true )

Child.create(parent_id:p1.id, teacher_id:t2.id, name: Faker::Name.name, image: Faker::LoremFlickr.image, dob:"08/30/2010", gender:"Male", notes: "Gets hangry", pick_up: false )

Child.create(parent_id:p2.id, teacher_id:t2.id, name: Faker::Name.name, image: Faker::LoremFlickr.image, dob:"01/15/2016", gender:"Male", notes: "Allergic to code", pick_up: false )

Car.create(year: 2019, make: "Honda", model:"civic", color:"blue", plate: "yhfd27", user: p1)
Car.create(year: 2012, make: "Ford", model:"f-150", color:"red", plate: "y7hfg2", user: p1)



