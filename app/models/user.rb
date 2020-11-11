class User < ApplicationRecord
    has_many :stats
    has_many :appointments
    has_many :workouts
    has_many :workouts, through: :appointments
    has_many :exercises, through: :stats
    
    validates :username, :password, presence: true
    validates :password, confirmation: { case_sensitive: true}

    # has_secure_password
 
end
