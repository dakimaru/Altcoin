class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :public_key

      t.timestamps
    end
  end
end
