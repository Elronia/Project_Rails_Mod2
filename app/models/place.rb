class Place < ApplicationRecord
    
    has_many :signups, dependent: :destroy
    has_many :categories, dependent: :destroy
    has_many :favorites, dependent: :destroy
    has_many :users, through: :signups#, :favorites
    has_many :users, through: :favorites

end
