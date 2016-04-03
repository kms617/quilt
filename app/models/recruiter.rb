class Recruiter < ActiveRecord::Base
  has_many :appointments
  has_many :timeslots, through: :appointments
end
