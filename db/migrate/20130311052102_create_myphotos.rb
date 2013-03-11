class CreateMyphotos < ActiveRecord::Migration
  def self.up
    create_table :myphotos do |t|
      t.string :nombre
      t.string :observacion

      t.timestamps
    end
  end

  def self.down
    drop_table :myphotos
  end
end
