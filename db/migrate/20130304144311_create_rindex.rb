class CreateRindex < ActiveRecord::Migration
  def change
    create_table :rindex do |t|
      t.integer :ocurrencia
      t.references :documento
      t.references :termino

      t.timestamps
    end
    add_index :rindex, :documento_id
    add_index :rindex, :termino_id
  end
end
