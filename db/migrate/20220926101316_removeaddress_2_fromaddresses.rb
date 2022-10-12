class Removeaddress2Fromaddresses < ActiveRecord::Migration[7.0]
  def change
      remove_column :addresses, :address_2, :string
  end
end
