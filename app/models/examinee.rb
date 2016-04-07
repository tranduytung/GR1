class Examinee < ActiveRecord::Base
  belongs_to :cluster
  has_one :result, :dependent => :destroy
  has_many :registers, :dependent => :destroy
  has_one :talent_point, :dependent => :destroy
  validates :name, presence: true
  validates :password, presence: true
  validates :people_id, presence: true
  validates :graduated, default: false
  validates :exam1, presence: true
  validates :exam2, presence: true
  validates :exam3, presence: true
  validates :exam4, presence: true
  validates :score, presence: true
  validates :year, presence: true
end
