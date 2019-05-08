class CreateIllnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :illnesses do |t|
      t.integer :patient_id
      t.integer :symptom_id

      t.timestamps
    end
  end
end
