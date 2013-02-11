class Modelo < ActiveRecord::Base
  has_one :caracteristica, :dependent => :destroy
  accepts_nested_attributes_for :caracteristica, :allow_destroy => true
  
  has_many :telefonos, :dependent => :destroy
  accepts_nested_attributes_for :telefonos, :allow_destroy => true
  
  has_many :fotos, :dependent => :destroy
  accepts_nested_attributes_for :fotos, :allow_destroy => true
  
  validates_presence_of :tipo_id, :numero_id, :nombres, :apellidos, :sexo, :fecha_nacimiento, :nacionalidad, :movil, :direccion, :comuna, :email
  
  

  
  
  
  
  # Paperclip
  has_attached_file :pictures, :default_url => '/images/perfil.png',
  :styles => {
        :thumb=> "50x50#",
        :small  => "300x300>",
        :large => "600x600>"
          }
    
  validates_attachment_content_type :pictures, :content_type => ['image/jpeg', 'image/png']
    
end
