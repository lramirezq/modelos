class CreateTelefonos < ActiveRecord::Migration
  def self.up
    create_table :telefonos do |t|
      t.string :cod_area
      t.string :telefono

      t.timestamps
    end
  end

  def self.down
    drop_table :telefonos
  end
end
