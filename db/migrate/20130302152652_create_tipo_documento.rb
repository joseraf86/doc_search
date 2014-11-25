class CreateTipoDocumento < ActiveRecord::Migration
  def change
    create_table :tipo_documento do |t|
      t.string :descripcion
      t.string :descripcion_corta

      t.timestamps
    end
  end
end
