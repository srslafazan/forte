class Offering < ApplicationRecord
  belongs_to :tutor
  belongs_to :skill_level
  belongs_to :instrument

  has_many :dreams, through: :instruments
  has_many :dreams, through: :skill_levels
  has_many :categories, through: :offering_categories


end
