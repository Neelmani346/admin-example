class Removeaddress1Fromaddresses < ActiveRecord::Migration[7.0]
  def change
      remove_column :addresses, :address_1, :string
  end
end
