class Relationship < ApplicationRecord
  has_many :users
  belongs_to :friend, :foreign_key => :friend_id, class_name: 'User'
  
end
