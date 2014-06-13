class AdminController < ApplicationController
before_action :correct_user
	def index
	 @admin = Admin.find(params[:id])
	end

	def show
  @admin = Admin.find(params[:id])
  @hospital = @admin.hospital
  @departments = @hospital.departments
	end
end


private

def correct_user
@user = User.find(params[:id]) 
redirect_to admin_url(session[:user_id]) unless session[:user_id] == @user.id
end 