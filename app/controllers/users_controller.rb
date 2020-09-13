class UsersController < ApplicationController
  before_action :authenticate, only: [:me]

  def sign_up
    @user = User.new(user_params)

    if @user.save
      render 'users/show', status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def me
    render 'users/me', locals: { user: @auth_user }
  end


  private
  def user_params
    params.require(:user).permit(:name, :email, :password)
  end
end
