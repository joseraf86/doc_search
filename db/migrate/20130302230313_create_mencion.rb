class CreateMencion < ActiveRecord::Migration
  def change
    create_table :mencion do |t|
      t.string :descripcion
      t.references :escuela

      t.timestamps
    end
    add_index :mencion, :escuela_id
  end
end
