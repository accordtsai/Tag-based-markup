class CreateEncounterTags < ActiveRecord::Migration
  def change
    create_table :encounter_tags do |t|
      t.integer :encounter_id
      t.integer :tag_id

      t.timestamps null: false
    end
    add_index :encounter_tags, :encounter_id
    add_index :encounter_tags, :tag_id
  end
end
