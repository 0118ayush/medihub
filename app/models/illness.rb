class Illness < ApplicationRecord

  belongs_to :patient
  belongs_to :symptom

end
