class Candidate < ActiveRecord::Base
  has_one :appointment

  has_many :specializations
  has_many :specialties, through: :specializations
  has_many :categories, through: :specialties

  accepts_nested_attributes_for :specializations
  accepts_nested_attributes_for :specialties
end
