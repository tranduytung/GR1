def check_graduted result, graduate_score
  @group_graduated_exam = GroupGraduatedExam. find_by(
    id: result.examinee.group_graduated_exam_id)
  @exam_graduated_all = @group_graduated_exam.to_exam_graduated
  @exam_graduated_all.each do |exam|
    return false if (result.send exam.name.downcase) < 1
  end
  return false if graduate_score < 4
  return true
end

CONN = ActiveRecord::Base.connection
Examinee.transaction do
  graduated_sql = []
  TIMES.times do |m|
    examinee = Examinee.find_by id: (m+1)
    graduate_score = examinee.result.graduate_score_caculation
    graduate_score = 10 if graduate_score > 10
    graduated = check_graduted(examinee.result, graduate_score) ? 't' : 'f'
    updated_at = Time.now
    sql_3 = "UPDATE examinees SET graduate_score = #{graduate_score},
      graduated = '#{graduated}', updated_at = '#{updated_at}'
      WHERE id = #{examinee.id}"
    CONN.execute sql_3
    puts "#{m+1}"
  end
  puts 'done update'
end
