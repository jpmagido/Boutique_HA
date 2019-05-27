class CartsController < ApplicationController

	def new
		
	end

	def show
		@cart = Cart.find(current_user.id) 
		@items = []
		Cart.all.each { |i|
			@items << Item.find(i.item_id)
		}
	end


	def create
		
	end


	def edit
		
	end

	def update
		
	end

	def destroy
		
	end
end
