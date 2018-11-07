class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def appttime
    self.appointment_datetime.strftime("%B %e, %Y at %R")
  end
end
