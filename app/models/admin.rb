class Admin < ApplicationRecord
    has_secure_password
    validates :user_id, presence: true
    validates :password, length: { in: 8..40 }
end
