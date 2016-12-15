class MajorInfo < ActiveRecord::Base
  belongs_to :major
  has_one :university, :through => :major
end
