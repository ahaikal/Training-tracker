class User < ActiveRecord::Base
	belongs_to :group
	has_many :educations


	def name
  	"#{first_name} #{last_name}"
 	end

 	end