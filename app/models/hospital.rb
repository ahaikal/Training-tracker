class Hospital < ActiveRecord::Base

	has_many :admins
	has_many :departments
end
