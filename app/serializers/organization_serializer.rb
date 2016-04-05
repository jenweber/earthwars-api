class OrganizationSerializer < ActiveModel::Serializer
  attributes :id, :name, :contact, :goal, :activities
end
