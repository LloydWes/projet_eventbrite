# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
print "-"*10, "Beginning seed", "-"*10,"\n"
puts "Emptying all tables"
Attendance.destroy_all
Event.destroy_all
User.destroy_all
puts "All tables are empty"

puts "Creating users"
10.times do |n|
  User.create!(first_name: Faker::Name.first_name, 
              last_name: Faker::Name.last_name, 
              email: "lloydthp#{n}@yopmail.com", 
              description: Faker::Lorem.paragraph
              )
end
puts "done"
puts "Creating events"
10.times do 
  Event.create!(admin_id: User.all.sample.id, 
                start_date: Faker::Date.between(Date.today, 2.months.from_now), 
                duration: rand(30..150), title: Faker::Lorem.sentence, 
                description: Faker::Lorem.paragraph, 
                price: rand(10..200), 
                location: Faker::Address.city
                )
end
# tp Event.all
puts "done"

puts "Creating attendances"
puts Event.all.sample.id
10.times do
  Attendance.create!(user_id: User.all.sample.id, 
                    event_id: Event.all.sample.id, 
                    stripe_customer_id: Faker::Lorem.sentence)
end
puts "done"

print "-"*10, "Displaying tables count", "-"*10,"\n"
puts "Users.count : #{User.count}"
puts "Users.count : #{Event.count}"
puts "Users.count : #{Attendance.count}"

print "-"*10, "Seed is done", "-"*10, "\n"