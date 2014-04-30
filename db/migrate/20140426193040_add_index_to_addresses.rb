class AddIndexToAddresses < ActiveRecord::Migration
  def change
  	add_index :addresses, [:user_id, :created_at]
  end
end
