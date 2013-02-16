class AddIdDetalletoCompetencia < ActiveRecord::Migration
  def self.up
    add_column :detallecompetencias, :competencia_id, :integer
    add_column :competencias, :detallecompetencia_id, :integer
  end

  def self.down
    remove_column :detallecompetencias, :competencia_id
    remove_column :competencias, :detallecompetencia_id
  end
end
