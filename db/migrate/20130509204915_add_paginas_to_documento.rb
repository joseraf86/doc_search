class AddPaginasToDocumento < ActiveRecord::Migration
  def change
    add_column :documento, :paginas, :integer
  end
end
