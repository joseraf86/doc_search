class CreateCindex < ActiveRecord::Migration
  def change
    create_table :cindex do |t|
      t.integer :ocurrencia
      t.references :documento
      t.references :termino

      t.timestamps
    end
    add_index :cindex, :documento_id
    add_index :cindex, :termino_id
  end
end
