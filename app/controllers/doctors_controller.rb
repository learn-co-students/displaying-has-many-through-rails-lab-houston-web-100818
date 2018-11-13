class DoctorsController < ApplicationController

  before_action :define_current_doctor

  def index
    @doctors = Doctor.all
  end

  def show
  end

  # def create
  #   Doctor.create(doctor_params)
  #   redirect_to doctors_path
  # end

  # def update
  #   @doctor.update(doctor_params)
  #   redirect_to @doctor
  # end
  #
  # def destroy
  #   @doctor.destroy
  #   redirect_to doctors_path
  # end

  def define_current_doctor
    if params[:id]
      @doctor = Doctor.find(params[:id])
    else
      @doctor = Doctor.new
    end
  end

  def doctor_params
    params.require(:doctor).permit(:name, :department)
  end
end
