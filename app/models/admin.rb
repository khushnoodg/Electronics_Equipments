class Admin < ApplicationRecord
   
    validates :email, presence: true
    validates :password, presence: true
    has_secure_password
end
