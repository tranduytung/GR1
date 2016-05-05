module ExamineesHelper
  def examinee_logged_in?
    !current_examinee.nil?
  end

  def current_examinee? examinee
    examinee == current_examinee
  end
end
