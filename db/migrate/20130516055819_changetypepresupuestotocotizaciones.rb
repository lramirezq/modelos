class Changetypepresupuestotocotizaciones < ActiveRecord::Migration
  def self.up
   change_column :cotizaciones, :presupuesto, :string
  end

  def self.down
   change_column :cotizaciones, :presupuesto, :float
  end
end
