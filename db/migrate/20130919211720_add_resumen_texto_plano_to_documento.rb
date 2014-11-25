class AddResumenTextoPlanoToDocumento < ActiveRecord::Migration
  def change
    add_column :documento, :resumen_texto_plano, :string
  end
end
