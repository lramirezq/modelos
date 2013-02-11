class Foto < ActiveRecord::Base
  belongs_to :modelo
  has_attached_file :picture, :default_url => '/images/perfil.png',
  :styles => {
        :thumb=> "50x50#",
        :small  => "300x300>",
        :large => "600x600>"
          }
    
  validates_attachment_content_type :picture, :content_type => ['image/jpeg', 'image/png']
  
end
