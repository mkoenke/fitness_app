# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
puts "Destroying Users"
Exercise.destroy_all
puts "Destroying Exercises"
Workout.destroy_all
puts "Destroying Workouts"
Stat.destroy_all
puts "Destroying Stats"
Appointment.destroy_all
puts "Destroying Appointments"
Join.destroy_all
puts "Destroying Joins"


mary = User.create!(name: "Mary Koenke", age: 35, username: "mkoenke", password: "mkoenke")
angie = User.create!(name: "Angelina Ramos", age: 11, username: "angie", password: "angie")
puts "Users seeded"

sumo = Exercise.create!(name:"Sumo Deadlift", description:"fake description", video:"video here" )
bicep = Exercise.create!(name:"Bicep Curl", description:"fake description", video:"video here" )
pushup = Exercise.create!(name:"Push ups", description: "fake description", video: "video here")
squat = Exercise.create!(name:"Barbell Back Squat", description: "fake description", video: "video here")
highknees = Exercise.create!(name:"High Knees", description:"fake description", video: "video here")
mile = Exercise.create!(name:"Mile Run", description:"fake description", video: "video here")
puts "Exercises seeded"

legday = Workout.create!(date: Date.new(2020, 3, 8) , time: Time.now , kind: "Legs", user_id: mary.id)
armday = Workout.create!(date: Date.new(2020, 3, 6) , time: Time.now , kind: "Arms", user_id: angie.id)
shoulderday = Workout.create!(date: Date.new(2020, 3, 4) , time: Time.now , kind: "Shoulders", user_id: mary.id)
gluteday = Workout.create!(date: Date.new(2020, 2, 7) , time: Time.now , kind: "Glutes", user_id: angie.id)
abday = Workout.create!(date: Date.new(2020, 2, 5) , time: Time.now , kind: "Abs", user_id: mary.id)

puts "Workouts seeded"

Stat.create!(user_id: mary.id, exercise_id: squat.id , weight: 260, comment: "Double Bodyweight Backsquat! Yay!")
Stat.create!(user_id: angie.id, exercise_id: mile.id , time: 8.5, comment: "Fastest Mile Run! Yay!")
puts "Stats seeded"


Appointment.create!(date: Date.new(2020, 3, 8), time: Time.now, workout_id: legday.id, user_id: mary.id, location: "In my garage" )
Appointment.create!(date: Date.new(2020, 3, 8), time: Time.now, workout_id: abday.id, user_id: angie.id, location: "Mid City Gym" )
puts "Appointments seeded"


    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
