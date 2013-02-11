class CreateAgenciamadres < ActiveRecord::Migration
  def self.up
    create_table :agenciamadres do |t|
      t.string :nombre
      t.string :dueno
      t.string :skype
      t.string :email
      t.string :direccion
      t.string :pais

      t.timestamps
    end
  end

  def self.down
    drop_table :agenciamadres
  end
end
