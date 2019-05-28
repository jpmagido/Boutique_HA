class CartsController < ApplicationController
	before_action :authenticate_user!


	def new
		
	end


	def index
	
		@items = []
		Cart.all.each { |i|
			@items << Item.find(i.item_id)
		}
	end


	def create
		@cart = []
	end


	def edit
		
	end

	def update
		@cart << Cart.new(user_id: current_user.id, item_id: params[:id]) 
	end

	def destroy
		
	end
end
