class Department < ActiveRecord::Base

	belongs_to :admin
	belongs_to :hospital
end
