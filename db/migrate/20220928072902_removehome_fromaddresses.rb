class RemovehomeFromaddresses < ActiveRecord::Migration[7.0]
  def change
    remove_column :addresses, :home, :string
  end
end
