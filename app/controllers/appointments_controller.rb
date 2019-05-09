class AppointmentsController < ApplicationController

  before_action :find_appointment, only: [:show, :edit, :update, :destroy]

   def index
     # byebug
     @available_appointments = helpers.available_appointments
     @booked_appointments = helpers.booked_appointments.each do |d,a|
       a.select {|ap| ap.doctor_id == session[:doctor_id]}
     end

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

   def show
     @patient = Patient.find(params[:id])
   end

   def new
     @appointment = Appointment.new
     @appointment_days = helpers.get_appointments
   end



   def edit
     @appointment_days = helpers.get_appointments
   end

   def update
     @appointment.update
   end

   def destroy
     if @appointment.destroy

       redirect_to appointments_path
     else

     end
   end

   def current_user

   end

   def logged_in?

   end

   private

   def find_appointment
     @appointment = Appointment.find(params[:id])
   end

   def appointment_params
     params.require(:appointment).permit!
   end

end
