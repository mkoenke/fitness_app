class Stat < ApplicationRecord
    belongs_to :user 
    belongs_to :exercise 

    validates :user_id, :exercise_id, :weight, :comment, presence: true

    has_one_attached :video
    
    def self.stats_by_exercise
        self.all.sort_by {|stat| stat.exercise.name}
    end
end
