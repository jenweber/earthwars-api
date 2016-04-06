class Activity < ActiveRecord::Base
    belongs_to :user, inverse_of: :activities, class_name: 'User'
    belongs_to :organization
end
