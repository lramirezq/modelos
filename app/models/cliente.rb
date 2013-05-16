class Cliente < ActiveRecord::Base
  validates_presence_of :razonsocial, :direccion, :rut
end
