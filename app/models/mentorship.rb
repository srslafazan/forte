class Mentorship < ApplicationRecord
  belongs_to :student
  belongs_to :tutor
  belongs_to :address

  has_many :offerings, through: :mentorship_offerings

end
