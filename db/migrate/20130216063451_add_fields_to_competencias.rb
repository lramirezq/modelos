class AddFieldsToCompetencias < ActiveRecord::Migration
  def self.up
    add_column :competencias, :texhibicionmes, :integer
    add_column :competencias, :texhibicionanno, :integer
  end

  def self.down
    remove_column :competencias, :texhibicionmes
    remove_column :competencias, :texhibicionanno
  end
end
