class Timeslot < ActiveRecord::Base
  has_many :appointments
  has_many :recruiters, through: :appointments
end
