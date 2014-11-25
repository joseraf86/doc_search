class CreatePremio < ActiveRecord::Migration
  def change
    create_table :premio do |t|
      t.string :descripcion

      t.timestamps
    end
  end
end
