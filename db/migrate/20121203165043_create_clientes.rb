class CreateClientes < ActiveRecord::Migration
  def self.up
    create_table :clientes do |t|
      t.string :rut
      t.string :razonsocial
      t.string :nombrefantasia
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :pais
      t.string :contacto
      t.string :email
      t.string :ncontacto
      t.string :contactofinanzas
      t.string :ncontactofinanzas

      t.timestamps
    end
  end

  def self.down
    drop_table :clientes
  end
end
