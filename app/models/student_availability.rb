class StudentAvailability < ApplicationRecord
  belongs_to :student
  belongs_to :time_block
end
