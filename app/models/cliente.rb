class Cliente < ActiveRecord::Base
  validates_presence_of :razonsocial, :direccion, :rut
  validates :rut, :uniqueness => {:scope => :rut}
end
