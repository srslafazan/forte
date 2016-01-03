class Offering < ApplicationRecord
  belongs_to :tutor
  belongs_to :skill_level
  belongs_to :instrument
  
  has_many :offering_categories
  has_many :categories, :through => :offering_categories

  has_many :dreams, through: :instrument # to be replaced with more specific query

  # def dreams
  	# ... make more specific offering query
  # end
end
