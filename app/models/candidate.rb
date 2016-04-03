class Candidate < ActiveRecord::Base
  has_one :appointment
  belongs_to :category

end
