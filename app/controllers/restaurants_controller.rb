class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurants = Restaurant.new
  end

  def create
    restaurant = Restaurant.new(restaurant_params)
    restaurant.save
    redirects_to restaurants_path
  end

  # private

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def restaurant_params
  #   params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  # end
end
