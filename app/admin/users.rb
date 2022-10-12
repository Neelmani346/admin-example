
ActiveAdmin.register User do
  permit_params :name, :email, addresses_attributes: [ :id, :address_type, :flat_no,:area, :land_mark, :city, :state, :country]

  config.sort_order = 'name_dsc'

    form do |f|
      f.inputs 'Details' do
        f.input :name
        f.input :email
      end
      f.inputs do
        f.has_many :addresses do |a|
          a.input :address_type, as: :select, :collection => Address::ADDRESS_TYPE, require: true 
          a.input :flat_no
          a.input :area
          a.input :land_mark
          a.input :city
          a.input :state
          a.input :country, :as => :string
        end
      end
        f.actions
      
    end


    controller do

      def create
        begin
            super
        rescue ActiveRecord::RecordNotUnique => e
           # @address_type = address_type.new(:user_id) 

           flash[:notice] = 'Address type already exists'         
        end
      end
      
    end
        # csv do
        #   column :land_mark
        #   # column(:author) { |post| post.author.full_name }
        #   # column('bODY', humanize_name: false) # preserve case
        # end
        

end
   