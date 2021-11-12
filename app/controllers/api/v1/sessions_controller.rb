class Api::V1::SessionsController < ApplicationController
  class AuthenticateError < StandardError; end
  rescue_from ActionController::ParameterMissing, with: :parameter_missing
  rescue_from AuthenticateError, with: :handle_unauthenticated

  def create
    if user
      session[:user_id] = user.id
      raise AuthenticateError unless user

      render json: UserSerializer.new(user).as_json, status: :created
    else
      render json: { error: 'User does not exist' }, status: :unauthorized
    end
  end

  def destroy
    reset_session
    render json: { message: 'You have logged out succesfully' }
  end

  private

  def user
    @user ||= User.find_by(username: params[:username])
  end

  def parameter_missing(error)
    render json: { error: error.message }, status: :unprocessable_entity
  end

  def handle_unauthenticated
    render json: { error: 'Incorrect username ' }, status: :unauthorized
  end
end
