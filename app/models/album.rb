class Album < ActiveRecord::Base
    belongs_to :modelo
    has_many :myphotos, :dependent => :destroy
    accepts_nested_attributes_for :myphotos, :allow_destroy => true
end
