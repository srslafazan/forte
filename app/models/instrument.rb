class Instrument < ApplicationRecord
  has_many :offerings
  belongs_to :dream
end
