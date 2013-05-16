class Changetypedatos < ActiveRecord::Migration
  def self.up
   change_column :detallecompetencias, :totalfactura, :string
   change_column :detallecompetencias, :comisionnma, :string
   change_column :detallecompetencias, :impuesto, :string
   change_column :detallecompetencias, :comisionamadre, :string
  end

  def self.down
   change_column :detallecompetencias, :totalfactura, :float
   change_column :detallecompetencias, :comisionnma, :float
   change_column :detallecompetencias, :impuesto, :float
   change_column :detallecompetencias, :comisionamadre, :float
  end
end
