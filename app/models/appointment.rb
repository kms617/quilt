class Appointment < ActiveRecord::Base
  belongs_to :recruiter
  belongs_to :timeslot
  belongs_to :candidate
end
