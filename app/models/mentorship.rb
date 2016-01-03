class Mentorship < ApplicationRecord
  belongs_to :student
  belongs_to :tutor

  has_many :offerings, through: :mentorship_offerings
  has_many :lessons

  def main_address
  	# ... query for address
  end

end
