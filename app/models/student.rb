class Student < ApplicationRecord
  has_secure_password
  
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
  has_many :dreams
  has_many :mentorships
  has_many :lessons, through: :mentorships

  has_many :addresses, :as => :addressable

  has_many :instruments, through: :dreams

  has_one :student_lesson_preferences

  has_many :student_availabilities
  has_many :time_blocks, through: :student_availabilities
  has_many :tutors, through: :mentorships
  has_many :lessons, through: :mentorships

  def main_address
    # ... create query for main_address
  end
end
