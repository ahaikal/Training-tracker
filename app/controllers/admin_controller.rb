class AdminController < ApplicationController

	def index
	 @admin = Admin.find(params[:id])
	end

	def show
  @admin = Admin.find(params[:id])
  @hospital = @admin.hospital
  @departments = @hospital.departments
	end
end
