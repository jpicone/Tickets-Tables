#This is the reservations controller source code.
class ReservationsController < ApplicationController

  def details
    @reservation = Reservation.find(params[:id])
  end
  
	def delete
		@reservation = Reservation.find(params[:id])
	end

	def confirm_delete
		@reservation = Reservation.find(params[:id])
		@restaurant = Restaurant.find(@reservation.restaurant_ID)
		if Reservation.find(@reservation.id).delete
			flash[:success] = "Reservation successfully deleted!"
		else
			flash[:error] = "There was an error processing your request."
		end
		redirect_to :controller => "restaurants", :action => "details", id: @restaurant.id
	end

	def edit
		@reservation = Reservation.find(params[:id])
	end
	
	def save
		@reservation = Reservation.find(params[:reservation][:id])
		if @reservation.update_attributes(reservation_params)
			flash[:success] = "Reservation Successfully Updated!"
			redirect_to :action => "details", :id => @reservation.id
		else
			flash[:error] = "Invalid Input!"
			render "edit"
		end
	end

	def create
		@reservation = Reservation.new(:restaurant_ID => params[:id])
	end

  def new
		@reservation = Reservation.new(reservation_params)
  	if @reservation.save
			flash[:success] = "Reservation Successfully Created!"
  		redirect_to :action => "details", :id => @reservation.id
		else
			flash[:error] = "Invalid Input!"
			redirect_to action: "create", id: @reservation.restaurant_ID
		end  	  		
  end

  private
    def reservation_params
      params.require(:reservation).permit(:reservation_date_time, :party_size, :notes, :restaurant_ID, :user_ID)
    end

end
