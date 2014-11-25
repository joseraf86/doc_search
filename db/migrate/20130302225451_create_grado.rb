class CreateGrado < ActiveRecord::Migration
  def change
    create_table :grado do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
