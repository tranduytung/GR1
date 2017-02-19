University.delete_all
University.reset_pk_sequence
Major.delete_all
Major.reset_pk_sequence
MajorInfo.delete_all
MajorInfo.reset_pk_sequence
MajorGroupExam.delete_all
MajorGroupExam.reset_pk_sequence
nuce = University.create!(
  name: "Trường Đại học Xây dựng",
  code: "NUCE",
  email: "nuce@gmail.com",
  password: "123456",
  password_confirmation: "123456")
a123456 = nuce.majors.create(
  code: "A123456",
  year: 2017,
  target: 750,
  benchmark1: rand(10)+17,
  benchmark2: rand(10)+10,
  benchmark3: rand(10)+5,
  register_status: 1,
  last_year_benchmark: rand(10)+10
)
a123456.major_infos.create(
  name: "XD")
a123456.major_group_exams.create(
  group_exam_id: 2
  )
a123456.major_group_exams.create(
  group_exam_id: 3
  )
a123456.major_group_exams.create(
  group_exam_id: 1
  )

d580102 = nuce.majors.create(
  code: "D580102",
  year: 2017,
  target: 750,
  benchmark1: rand(10)+17,
  benchmark2: rand(10)+10,
  benchmark3: rand(10)+5,
  register_status: 1,
  last_year_benchmark: rand(10)+10
)
d580102.major_infos.create(
  name: "XD")
d580102.major_group_exams.create(
  group_exam_id: 2
  )
d580102.major_group_exams.create(
  group_exam_id: 3
  )
d580102.major_group_exams.create(
  group_exam_id: 1
  )


puts("Hoan thanh dai hoc XD")
