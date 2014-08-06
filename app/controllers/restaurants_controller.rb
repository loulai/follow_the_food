class RestaurantsController < ApplicationController
	def index
		@restaurants = Restaurant.all
	end

	def new
	end

	def create
 		@restaurant = Restaurant.new(params[:restaurant].permit(:name, :city, :description, :location))
 		@restaurant.save
 		redirect_to @restaurant
 	end

 	def show
 		@restaurant = Restaurant.find(params[:id])
 	end
end
