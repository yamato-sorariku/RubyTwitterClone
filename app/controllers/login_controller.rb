class LoginController < ApplicationController
  def login
    user = User.find_by(email:params[:email])
    if user != nil && user.authenticate(params[:password])
      render json: { token: user.token }
    else
      render status: 403, plain: 'no auth'
    end
  end
end
