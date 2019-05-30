class Order < ApplicationRecord

	belongs_to :user
	has_many :join_table_orders_items 

	after_create :order_send 

	def order_send
   	AdminMailer.order_send(self).deliver
   end
	
end
