#
class UserLoginSerializer < ActiveModel::Serializer
  attributes :id, :email, :token, :admin, :organization_id

  def token
    Rails.application.message_verifier(:signed_token).generate(object.token)
  end
end
