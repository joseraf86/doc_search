class ChangeEficienciaPromedioGeneralPromedioPonderadoInEstudiante < ActiveRecord::Migration
  def up
    change_column :estudiante, :eficiencia,         :decimal
    change_column :estudiante, :promedio_general,   :decimal
    change_column :estudiante, :promedio_ponderado, :decimal
  end

  def down
    change_column :estudiante, :eficiencia,         :float
    change_column :estudiante, :promedio_general,   :float
    change_column :estudiante, :promedio_ponderado, :float
  end
end
