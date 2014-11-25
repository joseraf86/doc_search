class ChangeCedulaInPersona < ActiveRecord::Migration
  def up
    change_column :persona, :cedula, :string
  end

  def down
    change_column :persona, :cedula, :integer
  end
end
