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

backsquat = Exercise.create!(name:"Barbell Back Squat", description:"Weighted squat with barbell on your back", video:"https://www.youtube.com/watch?v=emfzIfOSkKc", category:"Legs")
frontsquat = Exercise.create!(name:"Front Squat", description:"Weighted squat with barbell on front rack", video:"https://www.youtube.com/watch?v=lNJ3DyibYZQ", category:"Legs")
splitsquat = Exercise.create!(name:"Bulgarian Split Squats", description: "Weighted squat with barbell and rear foot elevated", video: "https://www.youtube.com/watch?v=W5H-0DMiclY", category:"Legs")
deadlift = Exercise.create!(name:"Conventional Deadlift", description: "Weighted barbell pull with feet hips width distance", video: "https://www.youtube.com/watch?v=op9kVnSso6Q", category:"Legs")
romaniandl = Exercise.create!(name:"Romanian Deadlift", description:"Stiff-legged deadlift starting from top of the pull", video: "https://www.youtube.com/watch?v=lNJ3DyibYZQ", category:"Legs")
calf = Exercise.create!(name:"Calf Raises", description:"Exercise to target calf muscles", video: "https://www.youtube.com/watch?v=c5Kv6-fnTj8", category:"Legs")
legpress = Exercise.create!(name:"Leg Press", description:"Seated leg press to target quads", video:"https://www.youtube.com/watch?v=Aq5uxXrXq7c", category:"Legs")
kettlebell = Exercise.create!(name:"Kettle Bell Swings", description:"Swing with kettlebell to target core and glutes", video:"https://www.youtube.com/watch?v=6zKAw3C8XN4", category:"Legs")
lunges = Exercise.create!(name:"Barbell Lunges", description: "Lunges weighted with barbell", video: "https://www.youtube.com/watch?v=RL0kxD6cpz4", category:"Legs")
glutebridge = Exercise.create!(name:"Weighted Glute Bridge", description: "Weighted hip thrust to target glutes", video: "https://www.youtube.com/watch?v=QW1ROB4IUIA", category:"Legs")


bicep = Exercise.create!(name:"Bicep Curl", description:"Curl with dumbell to target bicep", video: "https://www.youtube.com/watch?v=uO_CNYidOw0", category: "Arms/Shoulders")
shoulderpress = Exercise.create!(name:"Shoulder Press", description:"Overhead press to target deltoids", video: "https://www.youtube.com/watch?v=B-aVuyhvLHU", category: "Arms/Shoulders")
arnoldpress = Exercise.create!(name:"Arnold Press", description: "Dumbell press with shoulder rotation", video: "https://www.youtube.com/watch?v=odhXwoS3mDA", category: "Arms/Shoulders")
miliatrypress = Exercise.create!(name:"Military Press", description:"Strict overhead press with barbell", video: "https://www.youtube.com/watch?v=Cjq9wf9XnX0", category: "Arms/Shoulders")
dips = Exercise.create!(name:"Dips", description:"Movement to target tricep", video: "https://www.youtube.com/watch?v=0326dy_-CzM", category: "Arms/Shoulders")
lateralraise = Exercise.create!(name:"Lateral Raise", description:"Dumbell raises to the side to target deltoids", video:"https://www.youtube.com/watch?v=kDqklk1ZESo", category: "Arms/Shoulders")
pushups = Exercise.create!(name:"Pushups", description: "Bodyweight exercise to target triceps and back", video: "https://www.youtube.com/watch?v=_l3ySVKYVJ8", category: "Arms/Shoulders")
pushpress = Exercise.create!(name:"Push Press", description: "Barbell overhead press with a dip for acceleration", video: "https://www.youtube.com/watch?v=tmf3bvsoiG8", category: "Arms/Shoulders")


cleanandjerk = Exercise.create!(name:"Clean and Jerk", description:"Dynamic competitive Olympic weightlifting movement", video:"hhttps://www.youtube.com/watch?v=c3YeE0eckyQ", category: "Olympic Weightlifting")
clean = Exercise.create!(name:"Clean", description:"Complex movement with barbell starting from pull off the floor to catch in a front squat", video:"https://www.youtube.com/watch?v=wNrjaPvKbdQ", category: "Olympic Weightlifting")
splitjerk = Exercise.create!(name:"Split Jerk", description: "Complex movement from front rack to overhead catch", video: "https://www.youtube.com/watch?v=BIfjXjsVihM", category: "Olympic Weightlifting")
snatch = Exercise.create!(name:"Snatch", description: "Dynamic competitive Olympic weightlifting movement", video: "https://www.youtube.com/watch?v=a-9wjip7Yg0", category: "Olympic Weightlifting")
highhangclean = Exercise.create!(name:"High Hang Cleans", description:"Clean starting from a high hang", video: "https://www.youtube.com/watch?v=gZ_rXQtgdTc", category: "Olympic Weightlifting")
highhangsnatch = Exercise.create!(name:"High Hang Snatch", description:"Snatch starting from a high hang", video: "https://www.youtube.com/watch?v=YLVYzO3P52I", category: "Olympic Weightlifting")
cleanhighpull = Exercise.create!(name:"Clean High Pulls", description:"Clean grip pull from the floor to chest height", video:"https://www.youtube.com/watch?v=fidmSMSa_Ag", category: "Olympic Weightlifting")
snatchhighpull = Exercise.create!(name:"Snatch High Pulls", description:"Snatch grip pull from the floor to chest height", video:"https://www.youtube.com/watch?v=WXoIHlJ7u4s", category: "Olympic Weightlifting")
balance = Exercise.create!(name:"Snatch Balance", description: "Weighted barbell on back with dip and drive to catch in overhead squat", video: "https://www.youtube.com/watch?v=D5BUtMk0INY", category: "Olympic Weightlifting")
powerclean = Exercise.create!(name:"Power Clean", description: "Clean with catch above parallel", video: "https://www.youtube.com/watch?v=-RX9YvX8ZOg", category: "Olympic Weightlifting")
powersnatch = Exercise.create!(name:"Power Snatch", description:"Snatch with catch above parallel", video:"https://www.youtube.com/watch?v=lAIqwzxS3pc", category: "Olympic Weightlifting")
btnjerk = Exercise.create!(name:"Behind-the-Neck Jerk", description:"Jerk with barbell starting in a back rack", video:"https://www.youtube.com/watch?v=Ha4DQHn8UD8", category: "Olympic Weightlifting")
pcpp = Exercise.create!(name:"Power Clean Push Press", description: "Clean with catch above parallel into accelerated overhead press", video: "https://www.youtube.com/watch?v=M2ZuTBjR2I4", category: "Olympic Weightlifting")

bench = Exercise.create!(name:"Bench Press", description:"Competition barbell bench press", video: "https://www.youtube.com/watch?v=gRVjAtPip0Y", category: "Chest")
dumbellpress = Exercise.create!(name:"Incline Dumbell Press", description:"Press with dumbells on a seated incline", video:"https://www.youtube.com/watch?v=8iPEnn-ltC8", category: "Chest")
cablefly = Exercise.create!(name:"Incline Bench Cable Fly", description: "Seated incline with resistance cables", video: "https://www.youtube.com/watch?v=GtHNC-5GtR0", category: "Chest")
pullover = Exercise.create!(name:"Incline Dumbell Pullovers", description: "Seated incline with dumbell", video: "https://www.youtube.com/watch?v=JRZ3K9eYCBM", category: "Chest")

pullup = Exercise.create!(name:"Strict Pull Ups", description: "Overhand strict pullups (no acceleration)", video: "https://www.youtube.com/watch?v=y9i6es2l80c", category: "Back")
barbellrows = Exercise.create!(name:"Barbell Bent-Over Rows", description:"Bent over rows targeting mid back", video: "https://www.youtube.com/watch?v=oUjrL5X_jz4", category: "Back")
dumbellrows = Exercise.create!(name:"Single Arm Dumbell Rows", description:"Unilateral row using bench support", video: "https://www.youtube.com/watch?v=xl1YiqQY2vA", category: "Back")
pulldowns = Exercise.create!(name:"Lat Pull Downs", description:"Overhead pulldown to chest targeting lat muscles ", video:"https://www.youtube.com/watch?v=lueEJGjTuPQ", category: "Back")
backextension = Exercise.create!(name:"Back Extensions", description: "Starting from folded over position using back and glutes to raise body", video: "https://www.youtube.com/watch?v=ph3pddpKzzw", category: "Back")
goodmorning = Exercise.create!(name:"Good Mornings", description: "Barbell movement from standing to L shape forward fold and back to standing", video: "https://www.youtube.com/watch?v=YA-h3n9L4YU", category: "Back")

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