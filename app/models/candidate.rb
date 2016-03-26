class Candidate < ActiveRecord::Base
  has_one :appointment
  belongs_to :category

  accepts_nested_attributes_for :categories
end
