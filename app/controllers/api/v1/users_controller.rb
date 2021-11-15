class Api::V1::UsersController < ApplicationController
  def index
    user = User.all
    render json: user
  end

  def create
    user = User.create(user_params)
    if user.save
      log_in user
      render json: UserSerializer.new(user).as_json, status: :created
    else
      render json: { error: user.errors.full_messages.first }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.require(:user).permit(:username)
  end
end
