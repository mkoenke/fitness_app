class Workout < ApplicationRecord
    belongs_to :user 
    has_many :exercise_workouts
    has_many :appointments
    has_many :exercises, through: :exercise_workouts 
    has_many :users, through: :appointments 
    accepts_nested_attributes_for :exercise_workouts 

end