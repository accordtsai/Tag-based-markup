class AddUserIdToPatientLists < ActiveRecord::Migration
  def change
    add_column :patient_lists, :user_id, :integer
    add_index :patient_lists, :user_id
  end
end
