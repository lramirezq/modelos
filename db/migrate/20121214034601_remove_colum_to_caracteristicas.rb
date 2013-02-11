class RemoveColumToCaracteristicas < ActiveRecord::Migration
  def self.up
    remove_column :caracteristicas, :email
    add_column :modelos, :email, :string
  end

  def self.down
    add_colum :caracteristicas, :email, :string
    remove_column :modelos, :email
  end
end
