class Place < ApplicationRecord
    
    has_many :signups
    has_many :categories
    has_many :favorites
    has_many :users, through: :signups#, :favorites
    has_many :users, through: :favorites

end
