class AddRelacionCotizacionHistorial < ActiveRecord::Migration
  def self.up
    add_column :cotizaciones, :historial_id, :integer
    add_column :historials, :cotizacione_id, :integer
  end

  def self.down
    remove_column :cotizaciones, :historial_id
    remove_column :historials, :cotizacione_id
  end
end
