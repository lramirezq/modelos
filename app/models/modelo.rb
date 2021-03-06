class Modelo < ActiveRecord::Base
#  validates_uniqueness_of :numero_id
  has_one :caracteristica, :dependent => :destroy
  accepts_nested_attributes_for :caracteristica, :allow_destroy => true
  
  has_many :telefonos, :dependent => :destroy
  accepts_nested_attributes_for :telefonos, :allow_destroy => true
  
  has_many :albums, :dependent => :destroy
  accepts_nested_attributes_for :albums, :allow_destroy => true
  
  validates_presence_of :nombres, :movil
  
 
  mount_uploader :image, ImageUploader
    
end
