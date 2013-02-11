class CreateAgenciaextranjeras < ActiveRecord::Migration
  def self.up
    create_table :agenciaextranjeras do |t|
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
    drop_table :agenciaextranjeras
  end
end
