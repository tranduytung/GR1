class GroupGraduatedExam < ActiveRecord::Base
  validates :exam_id_1, presence: true
  validates :exam_id_2, presence: true
  validates :exam_id_3, presence: true
  validates :exam_id_4, presence: true
end
