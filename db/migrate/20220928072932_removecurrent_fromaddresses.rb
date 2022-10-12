class RemovecurrentFromaddresses < ActiveRecord::Migration[7.0]
  def change
    remove_column :addresses, :current, :string
  end
end
