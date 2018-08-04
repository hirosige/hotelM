class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  include Knock::Authenticable

  private
  def unauthorized_entity(entity_name)
    render json: { error: "Unauthorized request" }, status:
        :unauthorized
  end
end