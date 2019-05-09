module AppointmentsHelper

  def booked_appointments
    { "Monday" => Appointment.all.select{|appointment| appointment.day == "Monday" && !appointment.patient_id.nil? },
      "Tuesday" => Appointment.all.select{|appointment| appointment.day == "Tuesday" && !appointment.patient_id.nil? },
      "Wednesday" => Appointment.all.select{|appointment| appointment.day == "Wednesday" && !appointment.patient_id.nil? },
       "Thursday" => Appointment.all.select{|appointment| appointment.day == "Thursday" && !appointment.patient_id.nil? },
       "Friday" => Appointment.all.select{|appointment| appointment.day == "Friday" && !appointment.patient_id.nil? },
       "Saturday" => Appointment.all.select{|appointment| appointment.day == "Saturday" && !appointment.patient_id.nil? },
       }
  end

  def available_appointments
    { "Monday" => Appointment.all.select{|appointment| appointment.day == "Monday" && appointment.patient_id.nil?},
      "Tuesday" => Appointment.all.select{|appointment| appointment.day == "Tuesday" && appointment.patient_id.nil?},
      "Wednesday" => Appointment.all.select{|appointment| appointment.day == "Wednesday" && appointment.patient_id.nil?},
       "Thursday" => Appointment.all.select{|appointment| appointment.day == "Thursday" && appointment.patient_id.nil?},
       "Friday" => Appointment.all.select{|appointment| appointment.day == "Friday" && appointment.patient_id.nil?},
      "Saturday" => Appointment.all.select{|appointment| appointment.day == "Saturday" && appointment.patient_id.nil?},
     }
  end

  def get_appointments

  available_appointments.values.flatten

  end

end
