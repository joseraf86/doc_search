class CreateDocumentoReconocimentoJoinTable < ActiveRecord::Migration
  def change
    create_table :documento_reconocimiento, :id => false do |t|
      t.integer :documento_id
      t.integer :reconocimiento_id
    end
  end
end
