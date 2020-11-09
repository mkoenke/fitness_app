class Exercise < ApplicationRecord
    has_many :joins
    has_many :stats
    has_many :workouts, through: :joins 
    has_many :users, through: :stats 
end