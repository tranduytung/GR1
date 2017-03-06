module RegistersHelper
  def register_major examinee, major_id, aspiration, group_exam_id
    registers = examinee.registers.aspiration_1
    @register_count = registers.count + 1
    @register = registers.find_by major_id: major_id, group_exam_id: group_exam_id
    if @register.nil?
      @major = Major.find_by id: major_id
      @university = []
      registers.each{|a| @university << a.university.id}
      if @university.uniq.count == 2 && !@university.include?(@major.university.id)
        flash[:danger] = "Da dang ki toi da 2 truong dai hoc"
      elsif @university.count(@major.university.id) == 2
        flash[:danger] = "Da dang ki toi da 2 nganh trong truong dai hoc"
      else
        review_score = cal_review_score examinee.result, group_exam_id
        @register = registers.create!(major_id: major_id, group_exam_id: group_exam_id,
          year: Time.now.year, status: 1, aspiration: aspiration.to_i,
          numbering_order: @register_count, review_score: review_score)
      end
    end
  end

  def cal_review_score result, group_exam_id
    group_exam = GroupExam.find_by id: group_exam_id
    return result.math * group_exam.math +
      result.biological * group_exam.biological +
      result.english * group_exam.english +
      result.literature * group_exam.literature +
      result.physical * group_exam.physical +
      result.chemistry * group_exam.chemistry +
      result.history * group_exam.history +
      result.geography * group_exam.geography
  end
end
