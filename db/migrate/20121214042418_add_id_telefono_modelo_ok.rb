class AddIdTelefonoModeloOk < ActiveRecord::Migration
  def self.up
    remove_column :modelos, :id_telefono
    remove_column :telefonos, :id_modelo
    
    add_column :modelos, :telefono_id, :integer
    add_column :telefonos, :modelo_id, :integer
  end

  def self.down
    add_column :modelos, :id_telefono, :integer
    add_column :telefonos, :id_modelo, :integer
    remove_column :modelos, :telefono_id
    remove_column :telefonos, :modelo_id
  end
end
