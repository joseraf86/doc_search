class AddTituloTextoPlanoToDocumento < ActiveRecord::Migration
  def change
    add_column :documento, :titulo_texto_plano, :string
  end
end
