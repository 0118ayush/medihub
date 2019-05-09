class AppointmentsController < ApplicationController

  before_action :find_appointment, only: [:show, :edit, :destroy]

  def index
    @available_appointments = helpers.available_appointments
    @booked_appointments = helpers.booked_appointments
  end

  def show
  end

  def new

     @appointment = Appointment.new
     @appointment_days = helpers.get_appointments

  end

  def create
    # @app = Appointment.find(params[:appointment][:id])
    # doctor = Doctor.find(11)
    # @patient = Patient.find_by(full_name: params[:appointment][:patient][:full_name])
    # @app.update(doctor: doctor, patient: @patient)

    @appointment = Appointment.find(params[:appointment][:id])
    # @doctor = Doctor.find(session[:doctor_id])
    @patient = Patient.find(params[:appointment][:patient_id])
    @doctor = Doctor.find(session[:doctor_id])

    @appointment.patient = @patient
    @appointment.doctor = @doctor

    @appointment.save

  
    illness = Illness.create(
      symptom_id: params[:appointment][:symptom][:symptom_id],
      patient: @patient
    )

    # byebug

    redirect_to appointments_path
  end

  def edit


    @appointment_days = helpers.get_appointments

  end

  def update

    @appointment = current_user.posts.find(params[:id])

    if @appointment.update(post_params[:patient, :day, :time])
      flash[:success] = 'Your post has been updated!'
      redirect_to appointment_path(@appointment)
    else
      render :edit
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
