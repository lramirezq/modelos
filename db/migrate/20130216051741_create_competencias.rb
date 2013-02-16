class CreateCompetencias < ActiveRecord::Migration
  def self.up
    create_table :competencias do |t|
      t.string :tipocompetencia
      t.string :nroorden
      t.string :producto
      t.string :campana
      t.string :razonsocial
      t.string :rut
      t.string :direccion
      t.string :telefono
      t.string :giro
      t.string :productor
      t.string :fotografo
      t.date :fechafoto
      t.string :agencia
      t.date :fechafilmacion
      t.date :fechacomercial
      t.integer :texhibiciondia
      t.integer :texhibiciondia
      t.integer :texhibiciondia
      t.string :medios
      t.string :paises
      t.string :bookerresponsable
      t.string :tipofactura
      t.string :nrofactura
      t.date :fechafactura
      t.string :reexhibicion
      t.string :observaciones
      t.string :grafica
      t.string :contrato

      t.timestamps
    end
  end

  def self.down
    drop_table :competencias
  end
end
