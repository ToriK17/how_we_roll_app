class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :campaigns, through: :campaign_user
  has_many :characters
  has_many :relationships
end
