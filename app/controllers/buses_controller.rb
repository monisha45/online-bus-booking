class BusesController < ApplicationController
	def new
	  @bus = Bus.new
	end

	def create
		#debugger
		puts "Successfully Created"
		puts params
		puts "Bus field is empty"
	  @bus = Bus.new(bus_params)
	  if @bus.save
	    redirect_to buses_path
	    flash[:notice] = "Successfully Created"
	  else
		flash[:error] = "Something went wrong! please try again!"
		redirect_to new_bus_path
	  end
	end

	def index
	  @buses = Bus.all
	  if !params[:from].nil? or !params[:to].nil?
		  from = params[:from] if !params[:from].nil?
		  to = params[:to] if !params[:to].nil?
		  selected_date = params[:depart_on] if !params[:depart_on].nil?
		  @routes = Route.where(:source =>from,:destination=>to).first.id
		  @buses = Bus.where(:route_id =>@routes)
	  end
	end
	def show
    	@bus = Bus.find(params[:id])
    end
	def destroy
	  @bus = Bus.find(params[:id])
	  @bus.destroy
	  redirect_to buses_path
	end
	def edit
		@bus = Bus.find(params[:id])
	end
	def update
		@bus = Bus.find(params[:id])
		if @bus.update_attributes(bus_params)
		  redirect_to buses_path
	      flash[:notice] = "Successfully Created"
	    else
		  flash[:error] = "Something went wrong! please try again!"
		  redirect_to new_bus_path
	    end
	end
	
	private

	def bus_params 
	    params.require(:bus).permit(:user_id, :route_id, :bus_type_id, :source, :destination, :bus_names, :no_of_seats_available, :departure_time, :arrival_time, :ticket_price, :date_of_journey)
	end

end
