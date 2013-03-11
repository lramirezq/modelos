class AddModeloAlbum < ActiveRecord::Migration
  def self.up
    add_column :albums, :modelo_id, :integer
    add_column :modelos, :album_id, :integer
  end

  def self.down
    remove_column :detallecompetencias, :modelo_id
    remove_column :modelos, :album_id
  end
end
