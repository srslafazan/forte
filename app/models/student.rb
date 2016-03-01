class Student < ApplicationRecord
  before_save :downcase_email
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }
  validates :phone_number, presence: true
  validates :birthdate, presence: true

  has_secure_password

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

  # Converts email to all lower-case
  def downcase_email
    self.email = email.downcase
  end

  def main_address
    # ... create query for main_address
  end
end
