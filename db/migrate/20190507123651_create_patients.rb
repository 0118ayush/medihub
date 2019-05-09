class CreatePatients < ActiveRecord::Migration[5.2]
  def change
    create_table :patients do |t|
      t.string "first_name"
      t.string "last_name"
      t.integer "age"
      t.string "height"
      t.integer "weight"
      t.boolean "relationship_status"
      t.boolean "employment_status"
      t.string "address"
      t.integer "contact_number"
      t.string "email"

      t.timestamps
    end
  end
end
