class Booker < ActiveRecord::Base
   belongs_to :agenciamadre
   belongs_to :agenciaextranjera
end
