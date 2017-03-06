Register.delete_all
Register.reset_pk_sequence

inserts_register = []
status = 1
year = 2017
aspiration = 1
a = University.count

def cal_review_score result, group_exam
  return result.math * group_exam.math +
  result.biological * group_exam.biological +
  result.english * group_exam.english +
  result.literature * group_exam.literature +
  result.physical * group_exam.physical +
  result.chemistry * group_exam.chemistry +
  result.history * group_exam.history +
  result.geography * group_exam.geography
end

Examinee.graduated.order(:created_at).each do |examinee|
  # byebug
  university_id_1 = rand(a) + 1
  university_id_2 = rand(a) + 1
  while university_id_1 == university_id_2
    university_id_2 = rand(a) + 1
  end
# byebug
  university_1 = University.find_by id: university_id_1
  university_2 = University.find_by id: university_id_2
  m_1 = university_1.majors.count
  m_2 = university_2.majors.count
  major_id_1 = rand(m_1)
  major_id_2 = rand(m_1)
  major_id_3 = rand(m_2)
  major_id_4 = rand(m_2)
  while major_id_1 == major_id_2
    major_id_2 = rand(m_1)
  end
  while major_id_3 == major_id_4
    major_id_4 = rand(m_2)
  end
  group_exam_id_1 = university_1.majors[major_id_1].major_group_exams.first.group_exam_id
  group_exam_id_2 = university_1.majors[major_id_2].major_group_exams.last.group_exam_id
  group_exam_id_3 = university_2.majors[major_id_3].major_group_exams.first.group_exam_id
  group_exam_id_4 = university_2.majors[major_id_4].major_group_exams.last.group_exam_id

  group_exam_1 = GroupExam.find_by id: group_exam_id_1
  group_exam_2 = GroupExam.find_by id: group_exam_id_2
  group_exam_3 = GroupExam.find_by id: group_exam_id_3
  group_exam_4 = GroupExam.find_by id: group_exam_id_4
  review_score_1 = cal_review_score examinee.result, group_exam_1
  review_score_2 = cal_review_score examinee.result, group_exam_2
  review_score_3 = cal_review_score examinee.result, group_exam_3
  review_score_4 = cal_review_score examinee.result, group_exam_4

  inserts_register.push "('#{university_1.majors[major_id_1].id}', '#{Time.now.year}',
    '1', '1', '#{examinee.id}', '#{Time.now}', 'null', '#{group_exam_id_1}', '1',
    '#{review_score_1}')"
  inserts_register.push "('#{university_1.majors[major_id_2].id}', '#{Time.now.year}', '1', '1',
    '#{examinee.id}', '#{Time.now}', 'null', '#{group_exam_id_2}', '2',
    '#{review_score_2}')"
  inserts_register.push "('#{university_2.majors[major_id_3].id}', '#{Time.now.year}', '1', '1',
    '#{examinee.id}', '#{Time.now}', 'null', '#{group_exam_id_3}', '3',
    '#{review_score_3}')"
  inserts_register.push "('#{university_2.majors[major_id_4].id}', '#{Time.now.year}', '1', '1',
    '#{examinee.id}', '#{Time.now}', 'null', '#{group_exam_id_4}', '4',
    '#{review_score_4}')"
  puts "9 - #{examinee.id} - DK thanh cong nganh"
end

sql_3 = "INSERT INTO registers ('major_id', 'year', 'status', 'aspiration',
  'examinee_id', 'created_at', 'updated_at', 'group_exam_id', 'numbering_order',
  'review_score') VALUES #{inserts_register.join(", ")}"
CONN.execute sql_3
puts 'done registers'
