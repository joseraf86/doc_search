class AddDescargasToDocumento < ActiveRecord::Migration
  def change
    add_column :documento, :descargas, :integer
  end
end
