class AddAreaToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :area, :string
  end
end
