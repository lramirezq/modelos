class AddEstadotoModelos < ActiveRecord::Migration
  def self.up
    add_column :modelos, :estado, :integer
  end

  def self.down
    remove_column :modelos, :estado
  end
end
