class TimeBlock < ApplicationRecord
  has_many :student_availabilities
  has_many :tutor_availabilities
end
