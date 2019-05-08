class AppointmentsController < ApplicationController

  before_action :find_appointment, only: [:show, :edit, :update, :destroy]

  def index
    @available_appointments = helpers.available_appointments
    @booked_appointments = helpers.booked_appointments
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
    @appointment_days = helpers.get_appointment_days
  end

  def update
    # remove patient_id from the existing appointment upon edit, then add that patient_id to the new appointment selected.
    #redirect to new show page

    if @appointment.update

    else

    end



  end

  def destroy
    if @appointment.destroy

      redirect_to appointments_path
    else

    end
  end


  private

  def find_appointment
    @appointment = Appointment.find(params[:id])
  end

  def appointment_params
    params.require(:appointment).permit!
  end


end
