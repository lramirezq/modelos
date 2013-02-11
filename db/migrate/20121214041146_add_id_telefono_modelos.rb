class AddIdTelefonoModelos < ActiveRecord::Migration
  def self.up
    add_column :modelos, :id_telefono, :integer
    add_column :telefonos, :id_modelo, :integer
  end

  def self.down
    remove_column :modelos, :id_telefono
    remove_column :telefonos, :id_modelo
  end
end
