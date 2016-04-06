class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :value, :challenge, :user, :user_id, :organization_id, :organization
end
