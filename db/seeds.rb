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

backsquat = Exercise.create!(name:"Barbell Back Squat", description:"Weighted squat with barbell on your back", video:"emfzIfOSkKc" )
frontsquat = Exercise.create!(name:"Front Squat", description:"Weighted squat with barbell on front rack", video:"lNJ3DyibYZQ" )
splitsquat = Exercise.create!(name:"Bulgarian Split Squats", description: "Weighted squat with barbell and rear foot elevated", video: "W5H-0DMiclY")
deadlift = Exercise.create!(name:"Conventional Deadlift", description: "Weighted barbell pull with feet hips width distance", video: "op9kVnSso6Q")
romaniandl = Exercise.create!(name:"Romanian Deadlift", description:"Stiff-legged deadlift starting from top of the pull", video: "5Isl_IL-o4Y")
calf = Exercise.create!(name:"Calf Raises", description:"Exercise to target calf muscles", video: "c5Kv6-fnTj8")
legpress = Exercise.create!(name:"Leg Press", description:"Seated leg press to target quads", video:"Aq5uxXrXq7c" )
kettlebell = Exercise.create!(name:"Kettle Bell Swings", description:"Swing with kettlebell to target core and glutes", video:"6zKAw3C8XN4" )
lunges = Exercise.create!(name:"Barbell Lunges", description: "Lunges weighted with barbell", video: "RL0kxD6cpz4")
glutebridge = Exercise.create!(name:"Weighted Glute Bridge", description: "Weighted hip thrust to target glutes", video: "QW1ROB4IUIA")


bicep = Exercise.create!(name:"Bicep Curl", description:"Curl with dumbell to target bicep", video: "uO_CNYidOw0")
shoulderpress = Exercise.create!(name:"Shoulder Press", description:"Overhead press to target deltoids", video: "B-aVuyhvLHU")
arnoldpress = Exercise.create!(name:"Arnold Press", description: "Dumbell press with shoulder rotation", video: "odhXwoS3mDA")
miliatrypress = Exercise.create!(name:"Military Press", description:"Strict overhead press with barbell", video: "Cjq9wf9XnX0")
dips = Exercise.create!(name:"Dips", description:"Movement to target tricep", video: "0326dy_-CzM")
lateralraise = Exercise.create!(name:"Lateral Raise", description:"Dumbell raises to the side to target deltoids", video:"kDqklk1ZESo" )
pushups = Exercise.create!(name:"Pushups", description: "Bodyweight exercise to target triceps and back", video: "_l3ySVKYVJ8")
pushpress = Exercise.create!(name:"Push Press", description: "Barbell overhead press with a dip for acceleration", video: "tmf3bvsoiG8")


cleanandjerk = Exercise.create!(name:"Clean and Jerk", description:"Dynamic competitive Olympic weightlifting movement", video:"c3YeE0eckyQ" )
clean = Exercise.create!(name:"Clean", description:"Complex movement with barbell starting from pull off the floor to catch in a front squat", video:"wNrjaPvKbdQ" )
splitjerk = Exercise.create!(name:"Split Jerk", description: "Complex movement from front rack to overhead catch", video: "BIfjXjsVihM")
snatch = Exercise.create!(name:"Snatch", description: "Dynamic competitive Olympic weightlifting movement", video: "a-9wjip7Yg0")
highhangclean = Exercise.create!(name:"High Hang Cleans", description:"Clean starting from a high hang", video: "gZ_rXQtgdTc")
highhangsnatch = Exercise.create!(name:"High Hang Snatch", description:"Snatch starting from a high hang", video: "YLVYzO3P52I")
cleanhighpull = Exercise.create!(name:"Clean High Pulls", description:"Clean grip pull from the floor to chest height", video:"fidmSMSa_Ag" )
snatchhighpull = Exercise.create!(name:"Snatch High Pulls", description:"Snatch grip pull from the floor to chest height", video:"WXoIHlJ7u4s" )
balance = Exercise.create!(name:"Snatch Balance", description: "Weighted barbell on back with dip and drive to catch in overhead squat", video: "D5BUtMk0INY")
powerclean = Exercise.create!(name:"Power Clean", description: "Clean with catch above parallel", video: "-RX9YvX8ZOg")
powersnatch = Exercise.create!(name:"Power Snatch", description:"Snatch with catch above parallel", video:"lAIqwzxS3pc" )
btnjerk = Exercise.create!(name:"Behind-the-Neck Jerk", description:"Jerk with barbell starting in a back rack", video:"Ha4DQHn8UD8" )
pcpp = Exercise.create!(name:"Power Clean Push Press", description: "Clean with catch above parallel into accelerated overhead press", video: "M2ZuTBjR2I4")

bench = Exercise.create!(name:"Bench Press", description:"Competition barbell bench press", video: "gRVjAtPip0Y")
dumbellpress = Exercise.create!(name:"Incline Dumbell Press", description:"Press with dumbells on a seated incline", video:"8iPEnn-ltC8" )
cablefly = Exercise.create!(name:"Incline Bench Cable Fly", description: "Seated incline with resistance cables", video: "GtHNC-5GtR0")
pullover = Exercise.create!(name:"Incline Dumbell Pullovers", description: "Seated incline with dumbell", video: "JRZ3K9eYCBM")

pullup = Exercise.create!(name:"Strict Pull Ups", description: "Overhand strict pullups (no acceleration)", video: "y9i6es2l80c")
barbellrows = Exercise.create!(name:"Barbell Bent-Over Rows", description:"Bent over rows targeting mid back", video: "oUjrL5X_jz4")
dumbellrows = Exercise.create!(name:"Single Arm Dumbell Rows", description:"Unilateral row using bench support", video: "xl1YiqQY2vA")
pulldowns = Exercise.create!(name:"Lat Pull Downs", description:"Overhead pulldown to chest targeting lat muscles ", video:"lueEJGjTuPQ" )
backextension = Exercise.create!(name:"Back Extensions", description: "Starting from folded over position using back and glutes to raise body", video: "ph3pddpKzzw")
goodmorning = Exercise.create!(name:"Good Mornings", description: "Barbell movement from standing to L shape forward fold and back to standing", video: "YA-h3n9L4YU")

puts "Exercises seeded"

legday = Workout.create!(date: Date.new(2020, 3, 8) , time: Time.now , kind: "Legs", user_id: mary.id)
armday = Workout.create!(date: Date.new(2020, 3, 6) , time: Time.now , kind: "Arms", user_id: angie.id)
shoulderday = Workout.create!(date: Date.new(2020, 3, 4) , time: Time.now , kind: "Shoulders", user_id: mary.id)
gluteday = Workout.create!(date: Date.new(2020, 2, 7) , time: Time.now , kind: "Glutes", user_id: angie.id)
abday = Workout.create!(date: Date.new(2020, 2, 5) , time: Time.now , kind: "Abs", user_id: mary.id)

puts "Workouts seeded"

Stat.create!(user_id: mary.id, exercise_id: cleanandjerk.id , weight: 185, comment: "PR Clean and Jerk! Yay!")
Stat.create!(user_id: angie.id, exercise_id: deadlift.id , weight: 100, comment: "Best deadlift yet! Yay!")
puts "Stats seeded"

Appointment.create!(date: Date.new(2020, 3, 8), time: Time.now, workout_id: legday.id, user_id: mary.id, location: "In my garage" )
Appointment.create!(date: Date.new(2020, 3, 8), time: Time.now, workout_id: abday.id, user_id: angie.id, location: "Mid City Gym" )
puts "Appointments seeded"

ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
ExerciseWorkout.create!(workout_id: Workout.all.sample.id , exercise_id: Exercise.all.sample.id , sets: 3 , reps: 10)
puts "ExerciseWorkout seeded"