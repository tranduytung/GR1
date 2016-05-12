class Cluster < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :examinees
  validates :name, presence: true, length: {maximum: 150}
  validates :code, presence: true, length: {is: 8}
  validates :address, presence: true, length: {maximum: 300}
  validates :year, presence:true
  validates :phone, presence: true, length: {maximum: 11, minimum: 10}
  validates :test_day, presence: true
end
