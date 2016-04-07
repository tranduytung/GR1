class Result < ActiveRecord::Base
  belongs_to :examinee
  validates :math, presence: true
  validates :literature, presence: true
  validates :english, presence: true
  validates :physical, presence: true
  validates :chemistry, presence: true
  validates :biological, presence: true
  validates :history, presence: true
  validates :geography, presence: true
end
