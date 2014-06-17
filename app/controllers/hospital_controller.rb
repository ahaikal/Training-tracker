class HospitalController < ApplicationController

	def show 
		hos = Hospital.find(params[:id])
		dep = hos.departments
		gro = dep.each(&:groups)
   @users = gro.each(&:users)
	end
end
