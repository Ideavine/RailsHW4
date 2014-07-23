class UsersController < ApplicationController

	def index
		# @ is an instance variable, we do this to pass it to the controller
		@users = User.all
 		if @users.present?
 			flash[:notice] = "Users display successfully."
 		else
 			flash[:alert] = "Sorry, there were no users to display."
 		end
	end


#/users//:id
	def show
		@id = params[:id]
		@user = User.find(@id)
	end

	def delete
		u = User.find(params[:id])
		if @u.destroy
 			flash[:notice] = "User deleted successfully."
 		else
 			flash[:alert] = "There was a problem deleting the user."
 			redirect_to home_path
		end
	end
end