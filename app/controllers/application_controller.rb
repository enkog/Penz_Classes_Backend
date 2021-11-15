class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotDestroyed, with: :not_destroyed

  def log_in(user)
    session[:user_id] = user.id
  end

  def logout
    session.delete(:user_id)
  end
end
