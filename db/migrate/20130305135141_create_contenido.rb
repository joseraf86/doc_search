class CreateContenido < ActiveRecord::Migration
  def change
    create_table :contenido do |t|
      t.text :texto
      t.references :documento

      t.timestamps
    end
    add_index :contenido, :documento_id
  end
end
