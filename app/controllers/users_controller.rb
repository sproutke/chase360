class UsersController < ApplicationController
	respond_to :json

	def update
		# TODO
		@user = User.find(params[:id])
		@user.update user_params
		render json: { id: params[:id].to_i, status: "success"}
	
	end
	private
		def user_params
	      params.permit(:phone_number, :first_name, :second_name, :email, :company_id, :department)
	    end
	
end