class Group < ActiveRecord::Base

	belongs_to :department
	has_many :users
	
end
