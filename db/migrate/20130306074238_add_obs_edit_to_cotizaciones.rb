class AddObsEditToCotizaciones < ActiveRecord::Migration
  def self.up
    add_column :cotizaciones, :obsedit, :string
  end

  def self.down
    remove_column :cotizaciones, :obsedit
  end
end
