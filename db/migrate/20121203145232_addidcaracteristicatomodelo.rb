class Addidcaracteristicatomodelo < ActiveRecord::Migration
  def self.up
    add_column :modelos, :caracteristica_id, :integer
    add_column :caracteristicas, :modelo_id, :integer
  end

  def self.down
    remove_column :modelos, :caracteristica_id
    remove_column :caracteristicas, :modelo_id
  end
end
