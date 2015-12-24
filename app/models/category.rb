class Category < ApplicationRecord
  has_many :offerings, :through :offering_categories
  has_many :dreams, :through :dream_categories
end
