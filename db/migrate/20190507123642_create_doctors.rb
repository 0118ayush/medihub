class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string "first_name"
      t.string "last_name"
      t.string "email"
      t.integer "contact_number"
      t.string "password_digest"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

      t.timestamps
    end
  end
end
