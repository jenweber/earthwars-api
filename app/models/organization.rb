class Organization < ActiveRecord::Base
  has_many :users, inverse_of: :organizations, foreign_key: 'organizations'
end
