class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
     
      t.string :land_mark
      t.string :city
      t.string :state
      t.string :country
      t.timestamps
    end
  end
end
