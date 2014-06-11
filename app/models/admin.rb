class Admin < ActiveRecord::Base
	has_secure_password

	has_many :departments
	belongs_to :hospital

	validates_presence_of :name
  validates_presence_of :email





end
