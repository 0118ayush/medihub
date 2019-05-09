class Appointment < ApplicationRecord

  belongs_to :doctor, required: false
  belongs_to :patient, required: false
  # accepts_nested_attributes_for :patient
  # accepts_nested_attributes_for :doctor


  def available_day_time
    "#{day} @ #{time}"
  end

end
