class Myphoto < ActiveRecord::Base
   belongs_to :album
    mount_uploader :picture, ImageUploader  
end
