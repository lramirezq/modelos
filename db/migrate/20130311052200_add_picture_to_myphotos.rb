class AddPictureToMyphotos < ActiveRecord::Migration
  def self.up
    add_column :myphotos, :picture, :string
  end

  def self.down
    remove_column :myphotos, :picture
  end
end
