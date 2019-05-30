class AddQuantityToJtCartsItem < ActiveRecord::Migration[5.2]
  def change
  	add_column :join_table_carts_items, :quantity, :integer
  	remove_column :orders, :quantity, :integer
  end
end
