class RestaurantsController < ApplicationController
	def index
	end

	def new
	end

	def create
 		@restaurant = Restaurant.new(params[:restaurant].permit(:name, :country, :description, :location))
 		@restaurant.save
 		redirect_to @restaurant
 	end

 	def show
 		@restaurant = Restaurant.find(params[:id])
 	end
end
