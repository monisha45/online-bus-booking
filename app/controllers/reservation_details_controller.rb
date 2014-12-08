class ReservationDetailsController < ApplicationController
	def new
	  @reservation_detail = ReservationDetail.new()
	  @price = params[:price] if !params[:price].nil?
	end

	def create
	  @reservation_detail = ReservationDetail.new(reservation_detail_params)
	  if @reservation_detail.save
	    redirect_to reservation_details_path
	    flash[:notice] = "Successfully Created"
	  else
		flash[:error] = "Something went wrong! please try again!"
		redirect_to new_reservation_detail_path
	  end
	end

	def index
		if is_admin?
		  @reservation_details = ReservationDetail.all
		elsif is_customer?
		  @reservation_details = ReservationDetail.all.where(:user_id =>current_user.id)
		end
	end
	def show
    	@reservation_detail = ReservationDetail.find(params[:id])
    end
	def destroy
	  @reservation_detail = ReservationDetail.find(params[:id])
	  @reservation_detail.destroy
	  redirect_to reservation_details_path
	end
	
	
	private

	def reservation_detail_params 
	    params.require(:reservation_detail).permit(:bus_id, :user_id, :no_of_persons, :gender, :total_price)
	end

end
