class AddreexhibicionToCotizacion < ActiveRecord::Migration
  def self.up
    add_column :cotizaciones, :reexhibicion, :string
  end

  def self.down
    remove_column :cotizaciones, :reexhibicion
  end
end
