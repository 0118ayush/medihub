class DoctorsController < ApplicationController

  before_action :find_doctor, only: [:show, :edit, :update, :destroy]

  def index

  end

  def show

  end

  def new

  end

  def create
    session[:username] = params[:username]
    redirect_to appointments_path
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
