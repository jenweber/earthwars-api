class OpenCreateController < ProtectedController
  ALLOW_ACTIONS = [:index, :show, :create].freeze
  skip_before_action :authenticate, only: ALLOW_ACTIONS
  before_action :set_current_user, only: ALLOW_ACTIONS
end
