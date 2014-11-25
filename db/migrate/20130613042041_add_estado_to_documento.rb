class AddEstadoToDocumento < ActiveRecord::Migration
  def change
    add_column :documento, :estado, :string
  end
end
