class AddCiudadSucursalToAgencias < ActiveRecord::Migration
  def self.up
    add_column :agenciaextranjeras, :ciudad, :string
    add_column :agenciaextranjeras, :sucursal, :string
    add_column :agenciamadres, :ciudad, :string
    add_column :agenciamadres, :sucursal, :string
  end

  def self.down
    remove_column :agenciaextranjeras, :ciudad
    remove_column :agenciaextranjeras, :sucursal
    remove_column :agenciamadres, :ciudad
    remove_column :agenciamadres, :sucursal
  end
end
