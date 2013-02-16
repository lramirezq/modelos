class AddGiroToClientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :giro, :string
  end

  def self.down
    remove_column :clientes, :giro
  end
end
