class TalentPoint < ActiveRecord::Base
  belongs_to :examinee
  belongs_to :university
  validates :tal_name, presence: true
  validates :tal_point, presence: true
end
