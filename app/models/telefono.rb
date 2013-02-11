class Telefono < ActiveRecord::Base
  belongs_to :agenciamadre
  belongs_to :agenciaextranjera
  belongs_to :modelo
  
  validates_presence_of :telefono
end
