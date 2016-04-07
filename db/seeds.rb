5.times do |n|
	name = Faker::Name.name
	code = Faker::Code.ean(base = 9)
	year = 2015
	Cluster.create!(name: name,
	code: code,
	year: year)
end

examer = Cluster.order(:created_at).take(5)
20.times do
examer.each { |examer|
name = Faker::Name.name
password = "123456"
people_id = Faker::Code.ean(base = 9)
exam4 = "physical"
score = rand(10)
year = 2015

examer.examinees.create!(
	name: name,
	password: password,
	people_id: people_id,
	graduated: true,
	exam4: exam4,
	score: score,
	year: year
		) }
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
10.times do
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

