class Workout < ApplicationRecord
    belongs_to :user 
    has_many :exercise_workouts
    has_many :appointments
    has_many :exercises, through: :exercise_workouts 
    has_many :users, through: :appointments 

    validates :kind, :user_id, presence: true

    accepts_nested_attributes_for :exercise_workouts, allow_destroy: true

    def self.sorted
        self.all.sort_by {|wo| wo.kind }
    end

end