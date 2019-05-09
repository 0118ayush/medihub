class DoctorsController < ApplicationController

  before_action :find_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show
    @appointment = Appointment.find(params[:id])
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      session[:doctor_id] = @doctor.id 
      redirect_to appointments_path, :notice => "Account Created"
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy

  end


  private

  def find_doctor
    @doctor = Doctor.find(session[:doctor_id])
  end

  def doctor_params
    params.require(:doctor).permit(:first_name, :last_name, :email, :password)
  end

end
