class UserController < ApplicationController

	def index

	end

	def show

		@user = User.find(params[:id])
		@education = @user.educations
	end
end
