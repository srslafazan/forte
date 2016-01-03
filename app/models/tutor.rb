class Tutor < ApplicationRecord
  has_many :offerings
  has_many :instruments, through: :offerings
  has_many :mentorships
  
  has_many :addresses, :as => :addressable

  has_one :tutor_lesson_preferences
  
  has_many :tutor_availabilities
  has_many :time_blocks, through: :tutor_availabilities
  
  has_many :students, through: :mentorships
  has_many :lessons, through: :mentorships
  
  def main_address
    # ... create query for main_address
  end
end
