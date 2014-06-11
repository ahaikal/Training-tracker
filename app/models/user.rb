class User < ActiveRecord::Base
	belongs_to :group
	has_many :educations
end
