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
  validates :phone, length: {minimum: 10, maximum: 11}, allow_blank: true
  validates :home_town, length: {maximum: 150}, allow_blank: true
  validates :hight_school, length: {maximum: 150}, allow_blank: true
  validates :birthday, presence: true
  validates :graduated, default: false
  validates :year, presence: true

  def password_required?
    super && new_record?
  end

  def update_with_password params, *options
    encrypted_password.blank? ? update_attributes(params, *options) : super
  end
end
