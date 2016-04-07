class University < ActiveRecord::Base
	has_many :examinees
	has_many :majors, :dependent => :destroy
	has_many :talent_point, :dependent => :destroy
	validates :name, presence: true
	validates :code, presence: true
	validates :password, presence:true
end
