class AppointmentsController < ApplicationController

  before_action :define_current_appointment

  # def index
  #   @appointments = Appointment.all
  # end

  def show
  end

  # def create
  #   Appointment.create(appointment_params)
  #   redirect_to appointments_path
  # end
  #
  # def update
  #   @appointment.update(appointment_params)
  #   redirect_to @appointment
  # end
  #
  # def destroy
  #   @appointment.destroy
  #   redirect_to appointments_path
  # end

  def define_current_appointment
    if params[:id]
      @appointment = Appointment.find(params[:id])
    else
      @appointment = Appointment.new
    end
  end

  def appointment_params
    params.require(:appointment).permit(:appointment_datetime, :doctor, :patient)
  end
end
