class CreateEstudiante < ActiveRecord::Migration
  def change
    create_table :estudiante do |t|
      t.float :promedio_general
      t.float :promedio_ponderado
      t.float :eficiencia
      t.references :escuela
      t.references :grado
      t.references :persona
      t.references :mencion
      t.references :premio

      t.timestamps
    end
    add_index :estudiante, :escuela_id
    add_index :estudiante, :grado_id
    add_index :estudiante, :persona_id
    add_index :estudiante, :mencion_id
    add_index :estudiante, :premio_id
  end
end
