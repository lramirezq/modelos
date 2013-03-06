class AddFechaTrabajoFinToCotizaciones < ActiveRecord::Migration
  def self.up
    add_column :cotizaciones, :fechatrabajofin, :date
  end

  def self.down
    remove_column :cotizaciones, :fechatrabajofin
  end
end
