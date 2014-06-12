class AdminController < ApplicationController

	def index
	 @admin = Admin.find(params[:id])
	end

	def show
  @admin = Admin.find(params[:id])
	end
end
