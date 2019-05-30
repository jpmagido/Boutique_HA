class ChargesController < ApplicationController

	def new
		@amount = Order.last.total_price

	end

	def create
	  # Amount in cents
	  if Order.where(user_id: current_user.id, total_price: params[:price]).last == nil
  		o = Order.new(user_id: current_user.id, total_price: params[:price])
  		o.save
  		
  	  end		

	  @amount = 500

	  customer = Stripe::Customer.create({
	    email: params[:stripeEmail],
	    source: params[:stripeToken],
	  })

	  charge = Stripe::Charge.create({
	    customer: customer.id,
	    amount: @amount,
	    description: 'Rails Stripe customer',
	    currency: 'usd',
	  })

	rescue Stripe::CardError => e
	  flash[:error] = e.message
	  redirect_to new_charge_path
	end


	
end


