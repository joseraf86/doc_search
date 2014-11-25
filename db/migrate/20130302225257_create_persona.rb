class CreatePersona < ActiveRecord::Migration
  def change
    create_table :persona do |t|
      t.integer :cedula
      t.string :nombres
      t.string :apellidos
      t.string :nombre_completo
      t.string :email

      t.timestamps
    end
  end
end
