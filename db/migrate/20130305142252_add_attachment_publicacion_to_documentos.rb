class AddAttachmentPublicacionToDocumentos < ActiveRecord::Migration
  def self.up
    change_table :documento do |t|
      t.has_attached_file :publicacion
    end
  end

  def self.down
    drop_attached_file :documento, :publicacion
  end
end
