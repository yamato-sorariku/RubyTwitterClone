class StatusesController < ApplicationController
  before_action :authenticate, only: [:index, :post]

  def post
    @status = Status.new(status_params)
    @status[:user_id] = @auth_user[:id]

    if @status.save
      render :show, status: :created
    else
      render json: @status.errors, status: :unprocessable_entity
    end
  end

  def index
    @statuses = Status.includes(:user).where(user_id: @auth_user[:id]).order(created_at: 'DESC')
  end

  private
  def status_params
    params.require(:status).permit(:content)
  end
end
