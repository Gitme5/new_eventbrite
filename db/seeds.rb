# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Faker::Config.locale = 'fr'

#Création de users


10.times do |i|
  User.create!(email: "user_#{i+1}@yopmail.com", encrypted_password: "123456", first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::Lorem.paragraph)
end
puts "10 User Done"

#Création des events
10.times do
  Event.create!(start_date: Faker::Date.forward(days: 45), duration: rand(1..10)*5, title: Faker::Book.title, description: Faker::Lorem.sentence(word_count: 6), price: rand(5..100).to_i, location: Faker::Address.city, admin: User.all.sample)
end
puts "10 Event Done"


#Création de attendances
20.times do
  Attendance.create!(user: User.all.sample, event: Event.all.sample, stripe_customer_id: rand(1000..9999))
end
puts "20 Attendance Done"