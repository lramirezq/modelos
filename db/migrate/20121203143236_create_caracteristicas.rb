class CreateCaracteristicas < ActiveRecord::Migration
  def self.up
    create_table :caracteristicas do |t|
      t.string :estatura
      t.string :calzado
      t.string :idiomas
      t.string :tpantalon
      t.string :tcamisa
      t.string :busto
      t.string :cintura
      t.string :cadera
      t.string :cojos
      t.string :ccabello
      t.string :lcabello
      t.string :etnia
      t.string :email
      t.string :hobbie
      t.string :mcuello
      t.string :terno
      t.boolean :desfile
      t.boolean :dientes
      t.boolean :actor
      t.boolean :frenillos
      t.boolean :experiencia
      t.boolean :hot

      t.timestamps
    end
  end

  def self.down
    drop_table :caracteristicas
  end
end
