class Workout < ApplicationRecord
    belongs_to :user 
    has_many :joins
    has_many :appointments
    has_many :exercises, through: :joins 
    has_many :users, through: :appointments 
    accepts_nested_attributes_for :exercises
end