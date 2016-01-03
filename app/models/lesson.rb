class Lesson < ApplicationRecord
  belongs_to :mentorship
  belongs_to :address

  belongs_to :mentorship
  has_one :student, :through => :mentorship
  has_one :tutor, :through => :mentorship
  
end
