class Addcotiza < ActiveRecord::Migration
  def self.up
    add_column :lcotizas, :cotizacione_id, :integer
  end

  def self.down
    remove_column :lcotizas, :cotizacione_id
  end
end
