class GroupController < ApplicationController


	def index

	end

	def show 
		@group = Group.find(params[:id])
		@emplyees = Group.users
	end
end
