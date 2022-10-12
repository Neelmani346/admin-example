class Address < ApplicationRecord
    belongs_to :user#, optional: true 
    # validates_uniqueness_of :address_type, scope: :user_id
        
    ADDRESS_TYPE={
     "HOME" => 'home', 
     "SHIP" => "ship",
     "CURRENT" => "current"}


 

end
  
 

 