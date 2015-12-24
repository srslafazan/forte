class Student < ApplicationRecord
  has_many :dreams
  has_many :mentorships
  has_many :lessons, through: :mentorships
  has_many :addresses

  has_many :instruments, through: :dreams

  has_one :student_lesson_preferences

  has_many :student_availabilities
  has_many :time_blocks, through: :student_availabilities
  has_many :tutors, through: :mentorships
end
