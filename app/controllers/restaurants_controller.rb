class RestaurantsController < ApplicationController
def index
    @restaurants = Restaurant.all
  end
 
  def show
    @restaurant = Restaurant.find(params[:id])
  end
 
  def new
  end

def create
  @restaraunt = Restaurant.new(restaurant_params)
 
  @restaraunt.save
  redirect_to @restaraunt
end
private
  def restaurant_params
    params.require(:restaurant).permit(:restaurant_name, :store_id,:phone_number,:address,:max_occupancy)
  end
end
