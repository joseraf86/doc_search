class CreateDocumento < ActiveRecord::Migration
  def change
    create_table :documento do |t|
      t.string :titulo
      t.text :resumen
      t.date :fecha_publicacion
      t.string :palabras_clave
      t.references :escuela
      t.references :tipo_documento
      t.references :estado_documento
      t.references :idioma
      t.references :visibilidad

      t.timestamps
    end
    add_index :documento, :escuela_id
    add_index :documento, :tipo_documento_id
    add_index :documento, :estado_documento_id
    add_index :documento, :idioma_id
    add_index :documento, :visibilidad_id
  end
end
