class Appointment < ApplicationRecord

  belongs_to :doctor, required: false
  belongs_to :patient, required: false


  def available_day_time
    "#{day} @ #{time}"
  end

end
