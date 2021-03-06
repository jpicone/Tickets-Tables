#This is the restaurants controller source code.
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

	def confirm_delete
		if Restaurant.find(params[:id]).delete
			flash[:success] = "Restaurant successfully deleted!"
		else
			flash[:error] = "There was an error processing your request."
		end
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
			flash[:error] = "Invalid Input!"
			render "edit"
		end
	end

	def create
		@restaurant = Restaurant.new
	end

  def new
  	@restaraunt = Restaurant.new(restaurant_params)
  	if @restaraunt.save
			flash[:success] = "Restaurant Successfully Created!"
  		redirect_to :action => "home"
		else
			flash[:error] = "Invalid Input!"
			redirect_to action: "create"
		end
  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:restaurant_name, :store_ID,:phone_number,:address)
    end

end
