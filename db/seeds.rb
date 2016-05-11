5.times do |n|
	name = Faker::Name.name
	code = Faker::Code.ean(base = 8)
	year = 2015
	phone = "1234567890"
	test_day = Time.now
	address = Faker::Lorem.sentence(5)
	map = "<iframe src='https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14899.03084548334!2d105.8430389!3d21.0023472!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0000000000000000%3A0x55e92a5b07a97d03!2zVHLGsOG7nW5nIMSQ4bqhaSBo4buNYyBCw6FjaCBraG9hIEjDoCBO4buZaQ!5e0!3m2!1svi!2s!4v1462604999901' width='600' height='450' frameborder='0' style='border:0' allowfullscreen></iframe>"
	email = "example-#{n+1}@railstutorial.org"
	password = "12345678"
	Cluster.create!(name: name,
	code: code,
	address: address,
	phone: phone,
	test_day: test_day,
	email: email,
	map: map,
	password: password,
	password_confirmation: password,
	year: year)
end

examer = Cluster.order(:created_at).take(5)
m = 0
2.times do |n|
examer.each { |examer|
  m = m+1
  name = Faker::Name.name
  email = "example-#{m}@railstutorial.org"
  password = "12345678"
  people_id = Faker::Code.ean(base = 8)
  student_id = Faker::Code.ean(base = 8)
  phone = "1234567890"
  home_town = Faker::Lorem.sentence(5)
  hight_school = Faker::Lorem.sentence(5)
  birthday = Time.now
  group_exam = rand(3) + 1
  graduate_score = rand(10)
  year = 2015
  examer.examinees.create!(
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
		)}
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
#byebug
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
register.each { |registe|
#byebug
#examinees_ob = Register.find_by(examinee_id: registe.id)
# if examinees_ob.nil?
# 	status = true
# else
# 	examinees_ob.each { |e| 
# 		e.status = false
# 	}
# 	status = true
# end
status = true
year = 2015
major_id = rand(Major.count-1)+1

registe.registers.create!(
	major_id: major_id,
	status: status,
	year: year
		)
}

exam = ["Math", "Literature", "English", "Physical", "Chemistry",
  "Biological", "History", "Geography"]

exam.each{ |exam|
  Exam.create! name: exam
}

GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 4
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 5
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 6
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 7
