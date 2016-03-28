class Candidate < ActiveRecord::Base
  has_one :appointment
  belongs_to :industry
end
