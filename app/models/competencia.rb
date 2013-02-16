class Competencia < ActiveRecord::Base
  has_many :detallecompetencias, :dependent => :destroy
  accepts_nested_attributes_for :detallecompetencias, :allow_destroy => true
  
  validates_presence_of :tipocompetencia, :razonsocial, :producto, :campana
end
