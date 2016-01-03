class Dream < ApplicationRecord
  belongs_to :student
  belongs_to :skill_level
  belongs_to :instrument

  has_many :dream_categories
  has_many :categories, :through => :dream_categories
  
  has_many :offerings, :through => :instrument # to be replaced with more specific query

  # def offerings
  	# ... make more specific offering query
  # end
end
