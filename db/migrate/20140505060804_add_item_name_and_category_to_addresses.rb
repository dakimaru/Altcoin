class AddItemNameAndCategoryToAddresses < ActiveRecord::Migration
  def change
    add_column :addresses, :item_name, :string
    add_column :addresses, :category, :string
  end
end
