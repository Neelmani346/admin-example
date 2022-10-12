class AddHomeToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :home, :string
  end
end
