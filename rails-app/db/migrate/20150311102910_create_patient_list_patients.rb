class CreatePatientListPatients < ActiveRecord::Migration
  def change
    create_table :patient_list_patients do |t|
      t.integer :patient_list_id
      t.integer :patient_id

      t.timestamps null: false
    end
    add_index :patient_list_patients, :patient_list_id
    add_index :patient_list_patients, :patient_id
  end
end
