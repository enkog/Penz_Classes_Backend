class Api::V1::SessionsController < ApplicationController
  class AuthenticateError < StandardError; end
  rescue_from ActionController::ParameterMissing, with: :parameter_missing

  def create
    if user
      log_in user
      render json: UserSerializer.new(user).as_json, status: :created
    else
      render json: { error: 'User does not exist' }, status: :unauthorized
    end
  end

  def destroy
    logout
    render json: { message: 'You have logged out succesfully' }
  end

  private

  def user
    @user ||= User.find_by(username: params[:session][:username].downcase)
  end

  def parameter_missing(error)
    render json: { error: error.message }, status: :unprocessable_entity
  end
end
