class Lcotiza < ActiveRecord::Base
  belongs_to :cotizacione
  validates_presence_of :cantidad, :personaje, :rol
end
