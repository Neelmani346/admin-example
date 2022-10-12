class AddaddressTypeToAddress < ActiveRecord::Migration[7.0]
  def change
    add_index :addresses, [:user_id, :address_type], unique: true
  end
end
