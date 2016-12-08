# Major.delete_all
# Major.reset_pk_sequence
# MajorInfo.delete_all
# MajorInfo.reset_pk_sequence
# MajorGroupExam.delete_all
# MajorGroupExam.reset_pk_sequence

# major = University.order(:created_at)
# 5.times do
# major.each{ |major|
#   code = Faker::Code.ean(base = 5)
#   year = 2015
#   benchmark1 = rand(10)+17
#   benchmark2 = rand(10)+10
#   benchmark3 = rand(15)
#   target = rand(100)+100
#   last_year_benchmark = rand(10)+10
#   deadline1 = DateTime.new(2015, 8, 1, 12, 00)
#   deadline2 = DateTime.new(2015, 8, 15, 12, 00)
#   if benchmark3 > 0
#     deadline3 = DateTime.new(2015, 8, 25, 12, 00)
#   else deadline3 = nil
#   end
#   major.majors.create!(
#     code: code,
#     year: year,
#     target: target,
#     benchmark1: benchmark1,
#     benchmark2: benchmark2,
#     benchmark3: benchmark3,
#     deadline1: deadline1,
#     deadline2: deadline2,
#     deadline3: deadline3,
#     last_year_benchmark: last_year_benchmark
#     )
# }
# end

# major = Major.order(:created_at)
# major.each{ |major|
#   major.major_group_exams.create!(
#     group_exam_id: rand(GroupExam.count) + 1
#     )
# }

# major = Major.order(:created_at)
# a = rand(3)+1
# a.times do
# major.each{ |major|
#   name = Faker::Name.name
#   major.major_infos.create!(
#     name: name
#     )
# }
# end
