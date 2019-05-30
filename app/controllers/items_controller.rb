class ItemsController < ApplicationController

	def index
		@items = Item.all
		@cart = Cart.last
	end

	def show
		@item = Item.find(params[:id])
	end

	def new
		@item = Item.new
	end


	def create
		item = Item.create(item_params)
		redirect_to items_path
	end


	def edit
		@item = Item.find(params[:id])
	end

	def update
		@item = Item.find(params[:id])

		 @item.update(item_params)
		 redirect_to item_path(params[:id])
	end

	def destroy
		@item = Item.find(params[:id])
		@item.destroy

		redirect_to items_path
	end

	private

	def item_params
		params.require(:item).permit(:name, :description, :price, :image_url)
	end

end
