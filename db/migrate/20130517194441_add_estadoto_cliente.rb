class AddEstadotoCliente < ActiveRecord::Migration
  def self.up
    add_column :clientes, :estado, :integer
  end

  def self.down
    remove_column :clientes, :estado
  end
end
