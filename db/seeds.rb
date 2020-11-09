# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts "Destroying Users"
Stat.destroy_all
puts "Destroying Stats"
Appointment.destroy_all
puts "Destroying Appointments"

mary = User.create!(name: "Mary Koenke", age: 35, username: "mkoenke", password: "mkoenke")
angie = User.create!(name: "Angelina Ramos", age: 11, username: "angie", password: "angie")
puts "Users seeded"
Stat.create!(user_id: mary.id, exercise_id: ______ , weight: 260, comment: "Double Bodyweight Backsquat! Yay!")
Stat.create!(user_id: angie.id, exercise_id: ______ , time: 8.5, comment: "Fastest Mile Run! Yay!")
puts "Stats seeded"
Appointment.create!(date: 2020-11-9, time: 05:30:00, workout_id: ____, user_id: mary.id, location: "In my garage" )
Appointment.create!(date: 2020-11-10, time: 11:30:00, workout_id: ____, user_id: angie.id, location: "Mid City Gym" )
puts "Appointments seeded"

