class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

  helper_method [:current_user, :logged_in?]

  def current_user
    return head(:forbidden) unless session.include?[:doctor_id]
    @current_user ||= Doctor.find(session[:_id])
  end

  def logged_in?
    !(session[:doctor_id].nil?)
  end


end
