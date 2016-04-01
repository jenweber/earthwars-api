#
class User < ActiveRecord::Base
  include Authentication
  belongs_to :organization, inverse_of: :users, class_name: 'Organization'
  has_many :activities
end
