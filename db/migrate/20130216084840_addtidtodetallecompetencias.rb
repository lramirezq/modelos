class Addtidtodetallecompetencias < ActiveRecord::Migration
  def self.up
    add_column :detallecompetencias, :tipo_id, :string
  end

  def self.down
    remove_column :detallecompetencias, :tipo_id
  end
end
