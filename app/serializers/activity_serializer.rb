class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :category, :value, :challenge, :user_id
end
