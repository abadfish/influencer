class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include Pundit

  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || root_path
  end

  # Rescues when no record is found
  # redirect user back with a warning message
  # If the referer field is not set redirect to root_path
  rescue_from ActiveRecord::RecordNotFound do
    flash[:warning] = 'Resource not found.'
    redirect_back_or root_path
  end

  def redirect_back_or(path)
    redirect_to request.referer || path
  end

end
