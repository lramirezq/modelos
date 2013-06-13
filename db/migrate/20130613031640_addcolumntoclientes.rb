class Addcolumntoclientes < ActiveRecord::Migration
  def self.up
    add_column :clientes, :tipo_id, :string
  end

  def self.down
    remove_column :clientes, :tipo_id
  end

end
