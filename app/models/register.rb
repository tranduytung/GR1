class Register < ActiveRecord::Base
  belongs_to :examinee
  belongs_to :major
  has_one :university, :through => :major
  validates :year, presence: true
  enum status: [:not_register, :registered, :elect, :not_elect]
  enum aspiration: {aspiration_1: 1, aspiration_2: 2, aspiration_3: 3}
end
