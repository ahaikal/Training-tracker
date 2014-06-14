class DepartmentController < ApplicationController

	def index
		
	end

	def show
		@department = Department.find(params[:id])
		@groups = @department.groups

	end

	def create
	
	end

	def delete

	end


end
