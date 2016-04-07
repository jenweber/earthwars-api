class Organization < ActiveRecord::Base
  has_many :users, inverse_of: :organization
  has_many :activities, through: :users
end
