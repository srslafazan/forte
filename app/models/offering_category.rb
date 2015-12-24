class OfferingCategory < ApplicationRecord
  belongs_to :offering
  belongs_to :category
end
