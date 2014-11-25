class CreateAutor < ActiveRecord::Migration
  def change
    create_table :autor do |t|
      t.references :persona
      t.references :documento

      t.timestamps
    end
    add_index :autor, :persona_id
    add_index :autor, :documento_id
  end
end
