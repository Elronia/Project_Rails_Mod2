class User < ApplicationRecord

    has_many :signups, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :places, through: :signups #, :favorites
    has_many :places, through: :favorites

    validates :first_name, presence: true
    validates :last_name, presence: true
    validates :email_address, email: true #check how to validate email

    has_secure_password
    
end
