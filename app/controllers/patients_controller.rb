class PatientsController < ApplicationController

  before_action :find_patient, only: [:show, :edit, :update, :destroy]

  def index
  @patients = Patient.all
  end

  def show
    @patient = Patient.find(params[:id])
  end


  private

 def find_patient
   @patient = Patient.find(params[:id])
 end

 def patient_params
   params.require(:patient).permit!
 end

end
