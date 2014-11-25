class CreateJurado < ActiveRecord::Migration
  def change
    create_table :jurado do |t|
      t.references :persona
      t.references :documento

      t.timestamps
    end
    add_index :jurado, :persona_id
    add_index :jurado, :documento_id
  end
end
