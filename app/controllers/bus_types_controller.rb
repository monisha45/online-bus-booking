class BusTypesController < ApplicationController
	def new
	  @bus_type = BusType.new()
	end

	def create
	  @bus_type = BusType.new(bus_type_params)
	  if @bus_type.save
	    redirect_to bus_types_path
	    flash[:notice] = "Successfully Created"
	  else
		flash[:error] = "Something went wrong! please try again!"
		redirect_to new_bus_type_path
	  end
	end

	def index
	  @bus_types = BusType.all
	end
	def show
    	@bus_type = BusType.find(params[:id])
    end
	def destroy
	  @bus_type = BusType.find(params[:id])
	  @bus_type.destroy
	  redirect_to bus_types_path
	end
	
	private

	def bus_type_params 
	    params.require(:bus_type).permit(:type, :description)
	end

end
