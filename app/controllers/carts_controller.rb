class CartsController < ApplicationController

	def new
		
	end

	def index
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
