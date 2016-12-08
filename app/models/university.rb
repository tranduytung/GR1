class University < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable,
          authentication_keys: [:code]
  has_many :examinees
  has_many :majors, :dependent => :destroy
  has_many :major_group_exams, through: :majors
  validates :name, presence: true
  validates :code, presence: true
  validates :password, presence:true
end
