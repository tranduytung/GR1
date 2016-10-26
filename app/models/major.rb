class Major < ActiveRecord::Base
  belongs_to :university
  belongs_to :group_exam
  has_many :registers, :dependent => :destroy
  validates :name, presence: true
  validates :year, presence: true
  validates :benchmark1, presence: true
  validates :deadline1, presence: true
  validates :last_year_benchmark, presence: true

end
