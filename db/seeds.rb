# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Join.destroy_all 
Workout.destroy_all
Exercise.destroy_all 


    Exercise.create!(name:"Sumo Deadlift", description:"fake description", video:"video here" )
    Exercise.create!(name:"Bicep Curl", description:"fake description", video:"video here" )
    Exercise.create!(name:"Push ups", description: "fake description", video: "video here")
    Exercise.create!(name:"Barbell Back Squat", description: "fake description", video: "video here")
    Exercise.create!(name:"High Knees", description:"fake description", video: "video here")

    Workout.create!(date: Date.new(2020, 3, 8) , time: Time.now , kind: "Legs")
    Workout.create!(date: Date.new(2020, 3, 6) , time: Time.now , kind: "Arms")
    Workout.create!(date: Date.new(2020, 3, 4) , time: Time.now , kind: "Shoulders")
    Workout.create!(date: Date.new(2020, 2, 7) , time: Time.now , kind: "Glutes")
    Workout.create!(date: Date.new(2020, 2, 5) , time: Time.now , kind: "Abs")
    Workout.create!(date: Date.new(2020, 2, 3) , time: Time.now , kind: "Legs")

    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
    Join.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
