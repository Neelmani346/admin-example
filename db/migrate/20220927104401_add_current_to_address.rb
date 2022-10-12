class AddCurrentToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :current, :string
  end
end
