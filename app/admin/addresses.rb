ActiveAdmin.register Address do
  config.sort_order = 'name_dsc'
  permit_params do
    permitted = [ :user_id,:address_type, :flat_no, :area, :land_mark, :city, :state, :country]
    # permitted << :other if params[:action] == 'create' && current_user.admin?
    # permitted
  end
  form do |f|
    f.inputs 'Details' do
     f.input :user
     f.input :address_type, as: :select, :collection =>  Address::ADDRESS_TYPE, require: true
     f.input :flat_no
     f.input :area
     f.input :land_mark
     f.input :city
     f.input :state 
     f.input :country, :as => :string

     # f.input :Address_type
    end
  f.actions
  end

  
end
