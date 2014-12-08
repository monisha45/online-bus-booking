class BillingDetailsController < ApplicationController
	def new
	  @billing_detail = BillingDetail.new()
	end

	def create

	  @billing_detail = BillingDetail.new(billing_detail_params)
	  if @billing_detail.save
	    redirect_to billing_details_path
	    flash[:notice] = "Successfully Created"
	  else
		flash[:error] = "Something went wrong! please try again!"
		redirect_to new_billing_detail_path
	  end
	end

	def index
		if is_admin?
	  		@billing_details = BillingDetail.all
	  	elsif is_customer?
	  		@billing_details = BillingDetail.all.where(:user_id =>current_user.id)
	  	end

	end
	def show
    	@billing_detail = BillingDetail.find(params[:id])
    end
	def destroy
	  @billing_detail = BillingDetail.find(params[:id])
	  @billing_detail.destroy
	  redirect_to billing_details_path
	end
	
	private

	def billing_detail_params 
	    params.require(:billing_detail).permit(:reservation_id, :user_id, :billing_type, :transaction_status)
	end

end
