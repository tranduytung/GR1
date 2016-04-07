class Cluster < ActiveRecord::Base
	has_many :examinees
	validates :name, presence: true
	validates :code, presence: true
	validates :year, presence:true
end
