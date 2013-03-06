class AddMailFinanzasToClientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :email_finanza, :string
  end

  def self.down
    remove_column :clientes, :email_finanza
  end
end
