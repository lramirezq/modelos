class AddCargoToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :cargo, :string
  end

  def self.down
    remove_colum :users, :cargo
  end
end
