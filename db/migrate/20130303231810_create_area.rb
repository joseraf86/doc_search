class CreateArea < ActiveRecord::Migration
  def change
    create_table :area do |t|
      t.string :descripcion
      t.references :escuela

      t.timestamps
    end
    add_index :area, :escuela_id
  end
end
