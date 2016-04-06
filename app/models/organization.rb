class Organization < ActiveRecord::Base
  has_many :users, inverse_of: :organizations
  has_many :activities
end
