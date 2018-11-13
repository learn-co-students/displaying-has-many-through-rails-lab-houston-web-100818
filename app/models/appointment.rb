class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def date_time
    AppointmentsHelper.date_formatter(self.appointment_datetime)
  end
end
