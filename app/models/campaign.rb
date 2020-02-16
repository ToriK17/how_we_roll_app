class Campaign < ApplicationRecord
  has_many :users, through: :campaign_user
  has_many :characters
end
