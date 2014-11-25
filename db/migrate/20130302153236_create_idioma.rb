class CreateIdioma < ActiveRecord::Migration
  def change
    create_table :idioma do |t|
      t.string :descripcion
      t.string :codigo

      t.timestamps
    end
  end
end
