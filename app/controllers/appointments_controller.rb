class AppointmentsController < ApplicationController

  before_action :find_appointment, only: [:show, :edit, :update, :destroy]

   def index
     # byebug
     @available_appointments = helpers.available_appointments
     @booked_appointments = helpers.booked_appointments.each do |d,a|
       a.select {|ap| ap.doctor_id == session[:doctor_id]}
     end
   end

   def show
     @patient = Patient.find(params[:id])
   end

   def new
     @appointment = Appointment.new
     @symptom = Symptom.new
     @appointment_days = helpers.get_appointments
   end

   def create
     @
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
