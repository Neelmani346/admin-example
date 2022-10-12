 class User < ApplicationRecord
     validates_length_of :name,  minimum: 3
     # validates :name, uniqueness:true
	 has_many :addresses, dependent: :destroy
     accepts_nested_attributes_for :addresses, allow_destroy: false
     
    
 




 end






    