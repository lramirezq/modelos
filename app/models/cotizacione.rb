class Cotizacione < ActiveRecord::Base
  has_many :lcotizas, :dependent => :destroy
  accepts_nested_attributes_for :lcotizas, :allow_destroy => true
  
  validates_presence_of :cliente, :presupuesto
end
