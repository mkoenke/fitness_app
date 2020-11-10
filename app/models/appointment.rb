class Appointment < ApplicationRecord
    belongs_to :user 
    belongs_to :workout 

    def start_time
        self.date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
end
