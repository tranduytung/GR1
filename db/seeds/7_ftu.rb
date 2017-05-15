ftu = University.create!(
  name: "Trường Đại học Ngoại thương",
  code: "FTU",
  email: "ftu@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  city: "Hà Nội")

d310101 = ftu.majors.create(
  code: "D310101",
  year: 2017,
  target: 900,
  register_status: 1
)
d310101.major_infos.create(
  name: "Kinh tế")
d310101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d310101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d310101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
d310101.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)

d340101 = ftu.majors.create(
  code: "D340101",
  year: 2017,
  target: 340,
  register_status: 1
)
d340101.major_infos.create(
  name: "Quản trị kinh doanh")
d340101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d340101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d340101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d340201 = ftu.majors.create(
  code: "D340201",
  year: 2017,
  target: 300,
  register_status: 1
)
d340201.major_infos.create(
  name: "Tài chính - Ngân hàng")
d340201.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d340201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d340201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d340120 = ftu.majors.create(
  code: "D340120",
  year: 2017,
  target: 150,
  register_status: 1
)
d340120.major_infos.create(
  name: "Kinh doanh quốc tế")
d340120.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d340120.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d340120.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d310106 = ftu.majors.create(
  code: "D310106",
  year: 2017,
  target: 350,
  register_status: 1
)
d310106.major_infos.create(
  name: "Kinh tế quốc tế")
d310106.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d310106.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d310106.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d380101 = ftu.majors.create(
  code: "D380101",
  year: 2017,
  target: 120,
  register_status: 1
)
d380101.major_infos.create(
  name: "Luật")
d380101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d380101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d380101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d220201 = ftu.majors.create(
  code: "D220201",
  year: 2017,
  target: 120,
  register_status: 1
)
d220201.major_infos.create(
  name: "Ngôn ngữ Anh")
d220201.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d220201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

puts("Hoan thanh dai hoc FTU")
