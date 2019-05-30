class CartsController < ApplicationController
	before_action :authenticate_user!
	attr_accessor :cart

	


	def index

		@items = []
		@cart = JoinTableCartsItem.all
		@cart.each { |i|
			if i.cart_id == current_user.cart_id

				@items << Item.find(i.item_id)
			end
		}
	end


	def create
		@cart = JoinTableCartsItem.new(cart_id: params[:user_id], item_id: params[:id].to_i) 
		
		if @cart.save
			redirect_to '/carts'
	    else
	    	p @cart.errors.messages
	    	p current_user.update(cart_id: Cart.last) 
	    	p current_user.save
	    end

	
	end


	def edit
		
	end

	def update
		if JoinTableCartsItem.destroy_all
			redirect_to '/carts'
	    end 
		
	end

	def destroy 

		
		if JoinTableCartsItem.destroy( JoinTableCartsItem.where(cart_id: params[:cart_id], item_id: params[:item_id].to_i).ids[0] )
			redirect_to '/carts'
	    else
	    	p JoinTableCartsItem.destroy(cart_id: params[:user_id], item_id: params[:id].to_i).errors.messages
	    end

	end
	
end
