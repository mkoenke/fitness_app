class User < ApplicationRecord
    has_many :stats
    has_many :appointments
    has_many :workouts
    has_many :workouts, through: :appointments
    has_many :exercises, through: :stats
    
    # validates :username, :password, :name, :age, :weight, :height, presence: true
    # validates :password, confirmation: { case_sensitive: true}
    # validates :username, uniqueness: true
    # validates :age, numericality: {greater_than: 0}

     has_secure_password
 
end
