class AddCorreoToCotizaciones < ActiveRecord::Migration
  def self.up
    add_column :cotizaciones, :correo, :string
  end

  def self.down
    remove_column :cotizaciones, :correo
  end
end
