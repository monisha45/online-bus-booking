class RoutesController < ApplicationController
	def new
	  @route = Route.new()
	end

	def create
	  @route = Route.new(route_params)
	  if @route.save
	  	redirect_to new_rot_path
	    flash[:notice] = "Successfully Created"
	  else
		flash[:error] = "Something went wrong! please try again!"
		redirect_to new_route_path
	  end
	end

	def index
	  @routes = Route.all
	end
	def show
    	@route = Route.find(params[:id])
    end
	def destroy
	  @route = Route.find(params[:id])
	  @route.destroy
	  redirect_to routes_path
	end
	
	private

	def route_params 
	    params.require(:route).permit(:source, :destination)
	end

end
