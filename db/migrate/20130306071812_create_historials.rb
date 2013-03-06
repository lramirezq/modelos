class CreateHistorials < ActiveRecord::Migration
  def self.up
    create_table :historials do |t|
      t.string :usuario
      t.date :fecha
      t.string :observacion

      t.timestamps
    end
  end

  def self.down
    drop_table :historials
  end
end
