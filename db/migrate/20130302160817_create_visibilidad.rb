class CreateVisibilidad < ActiveRecord::Migration
  def change
    create_table :visibilidad do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
