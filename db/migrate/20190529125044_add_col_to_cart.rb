class AddColToCart < ActiveRecord::Migration[5.2]
  def change

  	add_reference :carts, :user, index: { unique: true }, foreign_key: true
  	add_reference :users, :cart, index: { unique: true }, foreign_key: true

  end
end
