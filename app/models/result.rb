class Result < ActiveRecord::Base
  belongs_to :examinee
  validates :math, presence: true
  validates :literature, presence: true
  validates :english, presence: true
  validates :physical, presence: true
  validates :chemistry, presence: true
  validates :biological, presence: true
  validates :history, presence: true
  validates :geography, presence: true

  def graduate_score_caculation
    @total = 0
    @group_graduated_exam = GroupGraduatedExam. find_by(
      id: self.examinee.group_graduated_exam_id)
    @exam_graduated_all = @group_graduated_exam.to_exam_graduated
    @exam_graduated_all.each do |exam|
      @total += self.send exam.name.downcase
    end
    @graduate_score = ((@total + self.examinee.encourage_point)/4 +
      self.examinee.average_point)/2 + self.examinee.priority_point
    return @graduate_score
  end

  def check_graduted
    @group_graduated_exam = GroupGraduatedExam. find_by(
      id: self.examinee.group_graduated_exam_id)
    @exam_graduated_all = @group_graduated_exam.to_exam_graduated
    @exam_graduated_all.each do |exam|
      return false if (self.send exam.name.downcase) <= 1
    end
    return false if self.examinee.graduate_score < 5
    return true
  end
end
