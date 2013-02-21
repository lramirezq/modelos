class AddAttachmentPerfilToModelos < ActiveRecord::Migration
  def self.up
    change_table :modelos do |t|
      t.attachment :perfil
    end
  end

  def self.down
    drop_attached_file :modelos, :perfil
  end
end
