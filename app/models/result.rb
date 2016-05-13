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

  def find_exam exam_name
    return self.math if exam_name == "math"
    return self.literature if exam_name == "literature"
    return self.english if exam_name == "english"
    return self.physical if exam_name == "physical"
    return self.chemistry if exam_name == "chemistry"
    return self.biological if exam_name == "biological"
    return self.history if exam_name == "history"
    return self.geography if exam_name == "geography"
  end

  def graduate_score_caculation
    @total = 0
    @group_graduated_exam = GroupGraduatedExam. find_by(
      id: self.examinee.group_graduated_exam_id)
    @exam_graduated_all = Array.new
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_1)
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_2)
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_3)
    @exam_graduated_all << (Exam.find_by id: @group_graduated_exam.exam_id_4)
    @exam_graduated_all.each do |exam|
      @total += self.find_exam exam.name.downcase
    end
    return (@total.fdiv(@exam_graduated_all.length))
  end

end
