class Specialization < ActiveRecord::Base
  belongs_to :candidate
  belongs_to :specialty

  accepts_nested_attributes_for :specialty
end
