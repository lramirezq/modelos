class AddfechatrabajoToCotizaciones < ActiveRecord::Migration
  def self.up
    add_column :cotizaciones, :fechatrabajo, :date
  end

  def self.down
    remove_column :cotizaciones, :fechatrabajo
  end
end
