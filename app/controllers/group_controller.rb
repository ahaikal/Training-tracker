class GroupController < ApplicationController


	def index

	end

	def show 
		@group = Group.find(params[:id])
		@employees = @group.users
	end


end
