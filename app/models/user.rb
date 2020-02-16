class User < ApplicationRecord
  has_many :campaigns, through: :campaign_user
  has_many :characters
  has_many :relationships
end
