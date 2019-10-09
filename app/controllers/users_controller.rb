class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@photos = @user.photos.all
	end

	def destroy
		user = User.find(params[:id])
		user.destroy
		redirect_to root_path
	end

	private
	def user_params
		params.require(:user).permit(:email, :name, :account_id)
	end
end