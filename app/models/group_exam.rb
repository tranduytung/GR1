class GroupExam < ActiveRecord::Base
	validates :exam1, presence: true
	validates :exam2, presence: true
	validates :exam3, presence: true
end
