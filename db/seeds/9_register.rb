Register.delete_all
Register.reset_pk_sequence

inserts_register = []
status = 1
year = 2017
aspiration = 1
a = University.count

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
  major_id_1 = rand(m_1) + 1
  major_id_2 = rand(m_1) + 1
  major_id_3 = rand(m_2) + 1
  major_id_4 = rand(m_2) + 1
  while major_id_1 == major_id_2
    major_id_2 = rand(m_1) + 1
  end
  while major_id_3 == major_id_4
    major_id_4 = rand(m_2) + 1
  end
  inserts_register.push "('#{major_id_1}', '#{Time.now.year}', '1', '1',
    '#{examinee.id}', '#{Time.now}', 'null')"
  inserts_register.push "('#{major_id_2}', '#{Time.now.year}', '1', '1',
    '#{examinee.id}', '#{Time.now}', 'null')"
  inserts_register.push "('#{major_id_3}', '#{Time.now.year}', '1', '1',
    '#{examinee.id}', '#{Time.now}', 'null')"
  inserts_register.push "('#{major_id_4}', '#{Time.now.year}', '1', '1',
    '#{examinee.id}', '#{Time.now}', 'null')"
  puts "9 - #{examinee.id} - DK thanh cong nganh"
end

sql_3 = "INSERT INTO registers ('major_id', 'year', 'status', 'aspiration',
  'examinee_id', 'created_at', 'updated_at') VALUES #{inserts_register.join(", ")}"
CONN.execute sql_3
puts 'done registers'
