class Register < ActiveRecord::Base
  belongs_to :examinee
  belongs_to :major
  validates :status, presence: true
  validates :year, presence: true
end
