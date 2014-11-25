class CreateReconocimiento < ActiveRecord::Migration
  def change
    create_table :reconocimiento do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
