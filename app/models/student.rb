class Student < ApplicationRecord
  # bcrypt
  has_secure_password
  # paperclip
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
  
  # before
  before_save :downcase_email
  
  # validations
  validates :first_name, presence: true, length: { maximum: 50 }
  validates :last_name, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX },
                  uniqueness: { case_sensitive: false }
  validates :phone_number, presence: true
  validates :birthdate, presence: true

  # associations
  has_one :student_lesson_preferences
  has_many :dreams
  has_many :mentorships
  has_many :lessons, through: :mentorships
  has_many :addresses, :as => :addressable
  has_many :instruments, through: :dreams
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
