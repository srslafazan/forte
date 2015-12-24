class MentorshipOffering < ApplicationRecord
  belongs_to :mentorship
  belongs_to :offering

  has_one :address
end
