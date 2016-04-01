#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :admin, :organizaton, :organization_id
end
