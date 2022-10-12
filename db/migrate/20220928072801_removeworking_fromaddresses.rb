class RemoveworkingFromaddresses < ActiveRecord::Migration[7.0]
  def change
    remove_column :addresses, :working, :string
  end
end
