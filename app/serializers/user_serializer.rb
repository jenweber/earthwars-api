#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :admin, :organization_id
end
