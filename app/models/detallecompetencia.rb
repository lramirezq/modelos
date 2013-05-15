class Detallecompetencia < ActiveRecord::Base
  belongs_to :competencia
   validates_presence_of :nombremodelo
end
