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
Join.destroy_all 
puts "Destroying joins"
Workout.destroy_all
puts "Destroying workouts"
Exercise.destroy_all 
puts "Destroying Exercises"

mary = User.create!(name: "Mary Koenke", age: 35, username: "mkoenke", password: "mkoenke")
angie = User.create!(name: "Angelina Ramos", age: 11, username: "angie", password: "angie")
puts "Users seeded"


puts "Creating Exercises"
Exercise.create!(name:"Sumo Deadlift", description:"fake description", video:"video here" )
Exercise.create!(name:"Bicep Curl", description:"fake description", video:"video here" )
Exercise.create!(name:"Push ups", description: "fake description", video: "video here")
Exercise.create!(name:"Barbell Back Squat", description: "fake description", video: "video here")
Exercise.create!(name:"High Knees", description:"fake description", video: "video here")

Stat.create!(user_id: mary.id, exercise_id: Exercise.all.sample.id , weight: 260, comment: "Double Bodyweight Backsquat! Yay!")
Stat.create!(user_id: angie.id, exercise_id: Exercise.all.sample.id , time: 8.5, comment: "Fastest Mile Run! Yay!")
puts "Stats seeded"

Workout.create!(date: Date.new(2020, 3, 8) , time: Time.now , kind: "Legs", user_id: User.all.sample.id)
Workout.create!(date: Date.new(2020, 3, 6) , time: Time.now , kind: "Arms", user_id: User.all.sample.id)
Workout.create!(date: Date.new(2020, 3, 4) , time: Time.now , kind: "Shoulders", user_id: User.all.sample.id)
Workout.create!(date: Date.new(2020, 2, 7) , time: Time.now , kind: "Glutes", user_id: User.all.sample.id)
Workout.create!(date: Date.new(2020, 2, 5) , time: Time.now , kind: "Abs", user_id: User.all.sample.id)
Workout.create!(date: Date.new(2020, 2, 3) , time: Time.now , kind: "Legs", user_id: User.all.sample.id)
puts "Creating Workouts"

Appointment.create!(date: 2020-11-9, time: Time.now, workout_id: Workout.all.sample.id, user_id: mary.id, location: "In my garage" )
Appointment.create!(date: 2020-11-10, time: Time.now, workout_id: Workout.all.sample.id, user_id: angie.id, location: "Mid City Gym" )
puts "Appointments seeded"

puts "Creating Joins"
Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
