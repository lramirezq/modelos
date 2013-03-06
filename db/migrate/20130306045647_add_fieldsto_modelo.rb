class AddFieldstoModelo < ActiveRecord::Migration
  def self.up
    add_column :caracteristicas, :cicatriz, :boolean
    add_column :caracteristicas, :tatuaje, :boolean
    add_column :caracteristicas, :piercing, :boolean
    add_column :caracteristicas, :donde_cicatriz, :string
    add_column :caracteristicas, :donde_tatuaje, :string
    add_column :caracteristicas, :donde_piercing, :string
    add_column :caracteristicas, :otros, :string
  end

  def self.down
    remove_column :caracteristicas, :cicatriz
    remove_column :caracteristicas, :tatuaje
    remove_column :caracteristicas, :piercing
    remove_column :caracteristicas, :donde_cicatriz
    remove_column :caracteristicas, :donde_tatuaje
    remove_column :caracteristicas, :donde_piercing
    remove_column :caracteristicas, :otros, :string
  end
end
