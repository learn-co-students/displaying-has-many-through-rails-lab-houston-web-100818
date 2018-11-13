class PatientsController < ApplicationController

  before_action :define_current_patient

  def index
    @patients = Patient.all
  end

  # def create
  #   Patient.create(patient_params)
  #   redirect_to patients_path
  # end
  #
  # def update
  #   @patient.update(patient_params)
  #   redirect_to @patient
  # end
  #
  # def destroy
  #   @patient.destroy
  #   redirect_to patients_path
  # end

  def define_current_patient
    if params[:id]
      @patient = Patient.find(params[:id])
    else
      @patient = Patient.new
    end
  end

  def patient_params
    params.require(:patient).permit(:name, :age)
  end
end
