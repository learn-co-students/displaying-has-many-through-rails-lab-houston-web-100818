module AppointmentsHelper

  def concat_strings(a, b)
    a + " " + b
  end

  def self.date_formatter(datetime)
    date_time_string = datetime.strftime("%B %e, %Y at %k:%M")
  end

end
