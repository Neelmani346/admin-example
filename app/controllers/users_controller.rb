class UsersController < InheritedResources::Base
 
  def show
     # binding.pry
  end
  # 

 private
  def user_params
      # binding.pry
      permit_params :name, :email, address_attributes: [:id, :flat_no, :area, :land_mark, :city, :state, :country]
  end

end
