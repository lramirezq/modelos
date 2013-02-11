class AddAttachmentPicturesToModelo < ActiveRecord::Migration
  def self.up
    add_column :modelos, :pictures_file_name, :string
    add_column :modelos, :pictures_content_type, :string
    add_column :modelos, :pictures_file_size, :integer
    add_column :modelos, :pictures_updated_at, :datetime
  end

  def self.down
    remove_column :modelos, :pictures_file_name
    remove_column :modelos, :pictures_content_type
    remove_column :modelos, :pictures_file_size
    remove_column :modelos, :pictures_updated_at
  end
end
