class CreateIllnesses < ActiveRecord::Migration[5.2]
  def change
    create_table :illnesses do |t|
      t.integer "patient_id"
      t.integer "symptom_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
