class CreateAreaDocumentoJoinTable < ActiveRecord::Migration
  def change
    create_table :area_documento, :id => false do |t|
      t.integer :area_id
      t.integer :documento_id
    end
  end
end
