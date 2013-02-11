class CreateModelos < ActiveRecord::Migration
  def self.up
    create_table :modelos do |t|
      t.string :tipo_id
      t.string :numero_id
      t.string :nombres
      t.string :apellidos
      t.string :sexo
      t.date :fecha_nacimiento
      t.string :nacionalidad
      t.string :tipo_id_responsable
      t.string :numero_id_responsable
      t.string :nombres_responsable
      t.string :apellidos_responsable
      t.string :telefono_fijo
      t.string :movil
      t.string :direccion
      t.string :comuna
      t.string :ciudad
      t.string :pais
      t.string :licencia

      t.timestamps
    end
  end

  def self.down
    drop_table :modelos
  end
end
