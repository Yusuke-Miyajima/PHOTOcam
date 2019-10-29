class UsersController < ApplicationController
	def show
		@user = User.find(params[:id])
		@photos = @user.photos.all
	end

	def index
		@users = User.search(params[:search])
	end

	private
	def user_params
		params.require(:user).permit(:email, :name, :account_id)
	end
end