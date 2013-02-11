class CreateBookers < ActiveRecord::Migration
  def self.up
    create_table :bookers do |t|
      t.string :nombre

      t.timestamps
    end
  end

  def self.down
    drop_table :bookers
  end
end
