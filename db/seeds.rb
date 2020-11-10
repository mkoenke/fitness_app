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
ExerciseWorkout.destroy_all
puts "Destroying Joins"


mary = User.create!(name: "Mary Koenke", age: 35, username: "mkoenke", password: "mkoenke")
angie = User.create!(name: "Angelina Ramos", age: 11, username: "angie", password: "angie")
puts "Users seeded"

backsquat = Exercise.create!(name:"Barbell Back Squat", description:"Weighted squat with barbell on your back", video:"https://www.youtube.com/watch?v=emfzIfOSkKc" )
frontsquat = Exercise.create!(name:"Front Squat", description:"Weighted squat with barbell on front rack", video:"https://www.youtube.com/watch?v=lNJ3DyibYZQ" )
splitsquat = Exercise.create!(name:"Bulgarian Split Squats", description: "Weighted squat with barbell and rear foot elevated", video: "vhttps://www.youtube.com/watch?v=W5H-0DMiclY")
deadlift = Exercise.create!(name:"Conventional Deadlift", description: "Weighted barbell pull with feet hips width distance", video: "https://www.youtube.com/watch?v=op9kVnSso6Q")
romaniandl = Exercise.create!(name:"Romanian Deadlift", description:"Stiff-legged deadlift starting from top of the pull", video: "https://www.youtube.com/watch?v=lNJ3DyibYZQ")
calf = Exercise.create!(name:"Calf Raises", description:"Exercise to target calf muscles", video: "https://www.youtube.com/watch?v=c5Kv6-fnTj8")
legpress = Exercise.create!(name:"Leg Press", description:"Seated leg press to target quads", video:"https://www.youtube.com/watch?v=Aq5uxXrXq7c" )
kettlebell = Exercise.create!(name:"Kettle Bell Swings", description:"Swing with kettlebell to target core and glutes", video:"https://www.youtube.com/watch?v=6zKAw3C8XN4" )
lunges = Exercise.create!(name:"Barbell Lunges", description: "Lunges weighted with barbell", video: "https://www.youtube.com/watch?v=RL0kxD6cpz4")
glutebridge = Exercise.create!(name:"Weighted Glute Bridge", description: "Weighted hip thrust to target glutes", video: "https://www.youtube.com/watch?v=QW1ROB4IUIA")

bicep = Exercise.create!(name:"Bicep Curl", description:"Curl with dumbell to target bicep", video: "https://www.youtube.com/watch?v=uO_CNYidOw0")
shoulderpress = Exercise.create!(name:"Shoulder Press", description:"Overhead press to target deltoids", video: "https://www.youtube.com/watch?v=B-aVuyhvLHU")


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


puts "Creating Joins"
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
