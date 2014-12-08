class RolesController < ApplicationController
		def new
		  @role = Role.new()
		end

		def create
		  @role = Role.new(role_params)
		  if @role.save
		    redirect_to roles_path
		    flash[:notice] = "Successfully Created"
		  else
			flash[:error] = "Something went wrong! please try again!"
			redirect_to new_role_path
		  end
		end

		def index
		  @roles = Role.all
		end
		def show
	    	@role = Role.find(params[:id])
	    end
		def destroy
		  @role = Role.find(params[:id])
		  @role.destroy
		  redirect_to roles_path
		end
		
		private

		def role_params 
		    params.require(:role).permit(:name, :descriptions)
		end

end
