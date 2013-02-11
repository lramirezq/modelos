class AddIdModelotoFotos < ActiveRecord::Migration
  def self.up
     add_column :modelos, :foto_id, :integer
     add_column :fotos, :modelo_id, :integer
   end

   def self.down
     remove_colum :modelos, :foto_id, :integer
     remove_colum :fotos, :modelo_id, :integer
   end
end
