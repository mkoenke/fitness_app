class Appointment < ApplicationRecord
    belongs_to :user 
    belongs_to :workout 

    validates :date, :time, :workout_id, :user_id, :location, presence: true
    validate :not_past_date

    def not_past_date
        if self.date && self.date < Date.today
        errors.add(:date, 'can not be in the past')
        end
    end 

    def start_time
        self.date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end

    def parsed_date
        self.date.strftime("%m/%d/%Y")
    end

    def parsed_time
        self.time.strftime("%I:%M %p")
    end
end
