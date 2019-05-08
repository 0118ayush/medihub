class Patient < ApplicationRecord

  has_many :appointments
  has_many :illnesses
  has_many :doctors, through: :appointments
  has_many :symptoms, through: :illnesses

  def full_name
    self.first_name + " " + self.last_name
  end

end
