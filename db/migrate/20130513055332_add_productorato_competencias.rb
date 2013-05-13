class AddProductoratoCompetencias < ActiveRecord::Migration
  def self.up
    add_column :competencias, :productora, :string
  end

  def self.down
    remove_column :competencias, :productora, :string
  end
end
