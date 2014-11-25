class CreateTermino < ActiveRecord::Migration
  def change
    create_table :termino do |t|
      t.string :descripcion
      t.references :idioma

      t.timestamps
    end
    add_index :termino, :idioma_id
  end
end
