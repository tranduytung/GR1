module ExamineesHelper
  def examinee_logged_in?
    !current_examinee.nil?
  end

  def current_examinee? examinee
    current_examinee == examinee
  end
end
