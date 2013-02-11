class AddDescripcionToTelefono < ActiveRecord::Migration
  def self.up
     add_column :telefonos, :descripcion, :string
  end

  def self.down
    remove_column :telefonos, :descripcion
  end
end
