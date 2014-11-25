class CreateEstadoDocumento < ActiveRecord::Migration
  def change
    create_table :estado_documento do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
