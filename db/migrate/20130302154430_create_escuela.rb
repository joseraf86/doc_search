class CreateEscuela < ActiveRecord::Migration
  def change
    create_table :escuela do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
