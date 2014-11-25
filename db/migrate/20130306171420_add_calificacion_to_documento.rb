class AddCalificacionToDocumento < ActiveRecord::Migration
  def change
    add_column :documento, :calificacion, :integer
  end
end
