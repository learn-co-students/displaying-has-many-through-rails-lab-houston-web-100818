class Patient < ActiveRecord::Base
    has_many :appointments
    has_many :doctors, through: :appointments

    def appt_count
        self.appointments.size
    end

    def appts_sorted
        self.appointments.sort_by {|appt| appt.appointment_datetime}
    end
end
