class AddWorkingToAddress < ActiveRecord::Migration[7.0]
  def change
    add_column :addresses, :working, :string
  end
end
