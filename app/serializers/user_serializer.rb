#
class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :admin, :organization, :organization_id
end
