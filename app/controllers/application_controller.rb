class ApplicationController < ActionController::API
  include ActionController::HttpAuthentication::Token::ControllerMethods
  def authenticate
    authenticate_or_request_with_http_token do |token|
      @auth_user = User.find_by(token: token)
      @auth_user != nil ? true : false
      @auth_user != nil ? true : false
      @auth_user != nil ? true : false
      @auth_user != nil ? true : false
      @auth_user != nil ? true : false
    end
  end
end
