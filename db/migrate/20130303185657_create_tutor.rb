class CreateTutor < ActiveRecord::Migration
  def change
    create_table :tutor do |t|
      t.references :persona
      t.references :documento

      t.timestamps
    end
    add_index :tutor, :persona_id
    add_index :tutor, :documento_id
  end
end
