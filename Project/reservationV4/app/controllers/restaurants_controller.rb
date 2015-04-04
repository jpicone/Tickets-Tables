class RestaurantsController < ApplicationController

  def home
    @restaurants = Restaurant.all
  end

  def details
    @restaurant = Restaurant.find(params[:id])
  end
  
	def delete
		@restaurant = Restaurant.find(params[:id])
	end

	def confirmDelete
		Restaurant.find(params[:id]).delete
		redirect_to :action => "home"
	end

	def edit
		@restaurant = Restaurant.find(params[:id])
	end
	
	def save
		@restaurant = Restaurant.find(params[:restaurant][:id])
		if @restaurant.update_attributes(restaurant_params)
			flash[:success] = "Restaurant Successfully Updated!"
			redirect_to :action => "home"
		else
			render "edit"
		end
	end

	def create
		@restaurant = Restaurant.new
	end

  def new
  	@restaraunt = Restaurant.new(restaurant_params)
  	@restaraunt.save
  	redirect_to :action => "home"
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:restaurant_name, :store_ID,:phone_number,:address, :id)
    end

end
