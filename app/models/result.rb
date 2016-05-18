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
    return (@total.fdiv(@exam_graduated_all.length))
  end
end
