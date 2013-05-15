class Addidmodelotodetallecompetencia < ActiveRecord::Migration
  def self.up
    add_column :detallecompetencias, :id_modelo, :integer
  end

  def self.down
    remove_column :detallecompetencias, :id_modelo
  end
end
