class RotsController < ApplicationController
	def new
	  @rot = Rot.new()
	end

	def create
	  @rot = Rot.new(rot_params)
	  	redirect_to buses_path(rot_params)
	end

	def index
	  @rots = Rot.all
	end
	def show
    	@rot = Rot.find(params[:id])
    end
	def destroy
	  @rot = Rot.find(params[:id])
	  @rot.destroy
	  redirect_to rots_path
	end
	
	private

	def rot_params 
	    params.require(:rot).permit(:route_id, :from, :to, :depart_on)
	end
end
