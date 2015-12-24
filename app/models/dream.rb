class Dream < ApplicationRecord
  belongs_to :student
  belongs_to :skill_level
  belongs_to :instrument

  has_many :categories, through: :dream_categories
  has_many :offerings, through: :instruments
end
