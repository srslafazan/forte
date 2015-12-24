class Lesson < ApplicationRecord
  belongs_to :mentorship
  belongs_to :address

  # has_one :address
end
