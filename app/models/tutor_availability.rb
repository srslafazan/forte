class TutorAvailability < ApplicationRecord
  belongs_to :tutor
  belongs_to :time_block
end
