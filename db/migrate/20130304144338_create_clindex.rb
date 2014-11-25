class CreateClindex < ActiveRecord::Migration
  def change
    create_table :clindex do |t|
      t.integer :ocurrencia
      t.references :documento
      t.references :termino

      t.timestamps
    end
    add_index :clindex, :documento_id
    add_index :clindex, :termino_id
  end
end
