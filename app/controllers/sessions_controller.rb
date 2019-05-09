class SessionsController < ApplicationController

  helper_method :logged_in?

  def new
  end

  def create
    @doctor = Doctor.find_by(email: params[:email])
    return head(:forbidden) unless @doctor.authenticate(params[:password])
    session[:doctor_id] = @doctor.id
    redirect_to appointments_path
  end

  def destroy
    session.delete :doctor_id 
    redirect_to login_path
  end

  def logged_in?
    session[:doctor_id].nil?
  end

  # def dumb_hash(input)
  #   input.bytes.reduce(:+)
  # end

end
