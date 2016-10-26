100.times do |n|
  name = Faker::Name.name
  email = "example-#{n+1}@railstutorial.org"
  password = "123456"
  people_id = Faker::Code.ean(base = 8)
  student_id = Faker::Code.ean(base = 8)
  phone = "1234567890"
  home_town = Faker::Lorem.sentence(5)
  hight_school = Faker::Lorem.sentence(5)
  birthday = Time.now
  group_exam = rand(3) + 1
  graduate_score = rand(10)
  year = 2015
  Examinee.create!(
  name: name,
  email: email,
  password: password,
  password_confirmation: password,
  people_id: people_id,
  student_id: student_id,
  phone: phone,
  home_town: home_town,
  hight_school: hight_school,
  birthday: birthday,
  graduated: true,
  group_graduated_exam_id: group_exam,
  graduate_score: graduate_score,
  year: year
    )
end


res = Examinee.order(:created_at)
res.each { |resu|
math = rand(10)
literature = rand(10)
english = rand(10)
physical = rand(10)
chemistry = rand(10)
biological = rand(10)
history = rand(10)
geography = rand(10)
resu.create_result!(
  math: math,
  literature: literature,
  english: english,
  physical: physical,
  chemistry: chemistry,
  biological: biological,
  history: history,
  geography: geography
    )
}

2.times do |n|
  name = Faker::Name.name
  code = Faker::Code.ean(base = 9)
  password = "password"
  University.create!(name: name,
  code: code,
  password: password)
end


tal = Examinee.order(:created_at).take(10)
tal.each { |resu|
tal_name = "art"
tal_point = rand(10)
university_id = "1"
#byebug
resu.create_talent_point!(
  tal_name: tal_name,
  tal_point: tal_point,
  university_id: university_id
    )
}

GroupExam.create!(
  exam1: "math",
  exam2: "literature",
  exam3: "english"
  )
GroupExam.create!(
  exam1: "math",
  exam2: "physical",
  exam3: "chemistry"
  )

major = University.order(:created_at)
2.times do
major.each{ |major|
  name = Faker::Name.name
  year = 2015
  benchmark1 = rand(10)+17
  benchmark2 = rand(10)+10
  benchmark3 = rand(15)
  last_year_benchmark = rand(10)+10
  deadline1 = DateTime.new(2015, 8, 1, 12, 00)
  deadline2 = DateTime.new(2015, 8, 15, 12, 00)
  if benchmark3 > 0
    deadline3 = DateTime.new(2015, 8, 25, 12, 00)
  else deadline3 = nil
  end
  major.majors.create!(
    name: name,
    year: year,
    benchmark1: benchmark1,
    benchmark2: benchmark2,
    benchmark3: benchmark3,
    deadline1: deadline1,
    deadline2: deadline2,
    deadline3: deadline3,
    last_year_benchmark: last_year_benchmark
    )
}
end


register = Examinee.order(:created_at)
register.each {|registe|
status = true
year = 2015
major_id = rand(Major.count-1)+1

registe.registers.create!(
  major_id: major_id,
  status: status,
  year: year
)}

exam = ["Math", "Literature", "English", "Physical", "Chemistry",
  "Biological", "History", "Geography"]

exam.each{ |exam|
  Exam.create! name: exam
}

GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 4
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 5
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 6
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 7
