class Addestadoagencias < ActiveRecord::Migration
  def self.up
    add_column :agenciamadres, :estado, :string
    add_column :agenciaextranjeras, :estado, :string
  end

  def self.down
    remove_column :agenciamadres, :estado
    remove_column :agenciaextranjeras, :estado
  end
 
end
