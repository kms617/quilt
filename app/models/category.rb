class Category < ActiveRecord::Base
  has_many :candidates
end
