class AddAgenciaToModelo < ActiveRecord::Migration
  def self.up
    add_column :modelos, :agencia, :string
  end

  def self.down
    remove_colum :modelos, :agencia
  end
end
