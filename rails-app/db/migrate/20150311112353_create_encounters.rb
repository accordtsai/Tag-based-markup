class CreateEncounters < ActiveRecord::Migration
  def change
    create_table :encounters do |t|
      t.string :title
      t.datetime :signed_date
      t.text :content
      t.integer :patient_id

      t.timestamps null: false
    end
    add_index :encounters, :patient_id
  end
end
