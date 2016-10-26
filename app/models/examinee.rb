class Examinee < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         authentication_keys: [:people_id]

  belongs_to :group_graduated_exam
  has_one :result, dependent: :destroy
  has_many :registers, dependent: :destroy
  has_one :talent_point, dependent: :destroy

  validates :name, presence: true, length: {maximum: 150}
  validates :people_id, presence: true, length: {maximum: 11},
    uniqueness: {case_sensitive: false}
  validates :student_id, presence: true, length: {is: 8}
  validates :phone, presence: true, length: {minimum: 10, maximum: 11}
  validates :home_town, presence: true, length: {maximum: 150}
  validates :hight_school, presence: true, length: {maximum: 150}
  validates :birthday, presence: true
  validates :graduated, default: false
  validates :graduate_score, presence: true
  validates :year, presence: true
end
