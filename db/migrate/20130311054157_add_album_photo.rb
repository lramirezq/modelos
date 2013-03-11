
class AddAlbumPhoto < ActiveRecord::Migration
  def self.up
    add_column :myphotos, :album_id, :integer
    add_column :albums, :myphoto_id, :integer
    
  end

  def self.down
    remove_column :myphotos, :album_id
    remove_column :albums, :myphoto_id
  end
end
