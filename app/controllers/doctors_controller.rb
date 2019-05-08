class DoctorsController < ApplicationController

  before_action :find_doctor, only: [:show, :edit, :update, :destroy]

  def index
    @doctors = Doctor.all
  end

  def show
    @appointment = Appointment 
  end

  def new

  end

  def create

  end

  def edit
  end

  def update
  end

  def destroy
  end


  private

  def find_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit!
  end


end
