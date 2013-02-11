class Agenciamadre < ActiveRecord::Base
  has_many :bookers, :dependent => :destroy
  accepts_nested_attributes_for :bookers, :allow_destroy => true
  
  has_many :telefonos, :dependent => :destroy
  accepts_nested_attributes_for :telefonos, :allow_destroy => true
  
end
