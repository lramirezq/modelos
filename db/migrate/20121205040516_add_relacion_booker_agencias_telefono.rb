class AddRelacionBookerAgenciasTelefono < ActiveRecord::Migration
  def self.up
    add_column :agenciamadres, :booker_id, :integer
    add_column :agenciaextranjeras, :booker_id, :integer
    add_column :agenciamadres, :telefono_id, :integer
    add_column :agenciaextranjeras, :telefono_id, :integer
    add_column :telefonos, :agenciamadre_id, :integer
    add_column :telefonos, :agenciaextranjera_id, :integer
    add_column :bookers, :agenciamadre_id, :integer
    add_column :bookers, :agenciaextranjera_id, :integer
  end

  def self.down
    remove_column :agenciamadres, :booker_id
    remove_column :agenciaextranjeras, :booker_id
    remove_column :agenciamadres, :telefono_id
    remove_column :agenciaextranjeras, :telefono_id
    remove_column :telefonos, :agenciamadre_id
    remove_column :telefonos, :agenciaextranjera_id
    remove_column :bookers, :agenciamadre_id
    remove_column :bookers, :agenciaextranjera_id
  end
end
