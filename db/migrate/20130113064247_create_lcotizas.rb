class CreateLcotizas < ActiveRecord::Migration
  def self.up
    create_table :lcotizas do |t|
      t.integer :cantidad
      t.string :personaje
      t.string :rol
      t.integer :tdia
      t.integer :tmes
      t.integer :tanno
      t.string :medios
      t.string :pais
      t.integer :valor
      t.integer :diaadicional
      t.integer :diaviajado

      t.timestamps
    end
  end

  def self.down
    drop_table :lcotizas
  end
end
