class CreateDetallecompetencias < ActiveRecord::Migration
  def self.up
    create_table :detallecompetencias do |t|
      t.string :rutmodelo
      t.string :nombremodelo
      t.string :apellidomodelo
      t.string :categoria
      t.string :nombreresponsable
      t.float :totalfactura
      t.float :comisionnma
      t.float :impuesto
      t.string :agenciamadre
      t.float :comisionamadre

      t.timestamps
    end
  end

  def self.down
    drop_table :detallecompetencias
  end
end
