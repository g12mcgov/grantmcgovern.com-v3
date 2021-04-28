class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
  before_action :authenticate_request!
  attr_reader :current_user

  private

  def authenticate_request!
    @current_user = AuthorizeRequest.call(request.headers).result
    unless @current_user
      render json: { error: "Unauthorized request" },
             status: :unauthorized
    end
  end
end

