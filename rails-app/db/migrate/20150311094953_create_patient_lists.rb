class CreatePatientLists < ActiveRecord::Migration
  def change
    create_table :patient_lists do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
