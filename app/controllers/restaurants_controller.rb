class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def new
		@restaurant = Restaurant.new
	end

	def create
 		@restaurant = Restaurant.new(params[:restaurant].permit(:name, :city, :description, :location))
 		@restaurant.save
 		redirect_to @restaurant
 	end

 	def show
 		@restaurant = Restaurant.find(params[:id])
 	end

 	def edit
 		@restaurant = Restaurant.find(params[:id])
 	end

 	def update
 		@restaurant = Restaurant.find(params[:id])

 		if @restaurant.update(params.require(:restaurant).permit(:name, :city, :description, :location))
 			redirect_to @restaurant
 		end
 	end

 	def destroy
 		@restaurant = Restaurant.find(params[:id])
 		@restaurant.destroy

 		redirect_to restaurants_path
 	end

end
