class CreateCotizaciones < ActiveRecord::Migration
  def self.up
    create_table :cotizaciones do |t|
      t.date :fecha
      t.string :cliente
      t.string :territorio
      t.string :jornada
      t.float :presupuesto
      t.string :exclusividad
      t.string :observaciones
      t.string :usuario

      t.timestamps
    end
  end

  def self.down
    drop_table :cotizaciones
  end
end
