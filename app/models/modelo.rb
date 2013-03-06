class Modelo < ActiveRecord::Base
  validates_uniqueness_of :numero_id
  has_one :caracteristica, :dependent => :destroy
  accepts_nested_attributes_for :caracteristica, :allow_destroy => true
  
  has_many :telefonos, :dependent => :destroy
  accepts_nested_attributes_for :telefonos, :allow_destroy => true
  
  has_many :fotos, :dependent => :destroy
  accepts_nested_attributes_for :fotos, :allow_destroy => true
  
  validates_presence_of :tipo_id, :numero_id, :nombres, :apellidos, :sexo, :fecha_nacimiento, :nacionalidad, :movil, :direccion, :comuna, :email
  
  mount_uploader :image, ImageUploader
    
  #validates_attachment_content_type :pictures, :content_type => ['image/jpeg', 'image/png']
    
end
