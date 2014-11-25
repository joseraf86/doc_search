class CreateTindex < ActiveRecord::Migration
  def change
    create_table :tindex do |t|
      t.integer :ocurrencia
      t.references :documento
      t.references :termino

      t.timestamps
    end
    add_index :tindex, :documento_id
    add_index :tindex, :termino_id
  end
end
