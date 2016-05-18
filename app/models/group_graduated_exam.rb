class GroupGraduatedExam < ActiveRecord::Base
  validates :exam_id_1, presence: true
  validates :exam_id_2, presence: true
  validates :exam_id_3, presence: true
  validates :exam_id_4, presence: true

  def to_exam_graduated
    @exam_array = Array.new
    @exam_array << (Exam.find_by id: self.exam_id_1)
    @exam_array << (Exam.find_by id: self.exam_id_2)
    @exam_array << (Exam.find_by id: self.exam_id_3)
    @exam_array << (Exam.find_by id: self.exam_id_4)
    return @exam_array
  end
end
