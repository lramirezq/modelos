class Addfieldmodels < ActiveRecord::Migration
  def self.up
    add_column :modelos, :link_pictures, :string
    add_column :modelos, :observaciones, :string
    
  end

  def self.down
    remove_column :modelos, :link_pictures
    remove_column :modelos, :observaciones
    
  end
end
