class DreamCategory < ApplicationRecord
  belongs_to :category
  belongs_to :dream
end
