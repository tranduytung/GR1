utc = University.create!(
  name: "Trường Đại học giao thông vận tải Hà Nội",
  code: "UTC",
  email: "utc@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  city: "Hà Nội")

d580205 = utc.majors.create(
  code: "D580205",
  year: 2017,
  target: 1000,
  register_status: 1
)
d580205.major_infos.create(
  name: "Kĩ thuật xây dựng công trình giao thông")
d580205.major_infos.create(
  name: "Kĩ thuật xây dựng công trình giao thông (Chương trình chất lượng cao Cầu – Đường bộ Việt – Anh)")
d580205.major_infos.create(
  name: "Kĩ thuật xây dựng công trình giao thông (Chương trình chất lượng cao Cầu – Đường bộ Việt – Pháp)")
d580205.major_infos.create(
  name: "Kĩ thuật xây dựng công trình giao thông (Chương trình chất lượng cao Cầu – Đường bộ Việt – Nhật)")
d580205.major_infos.create(
  name: "Kĩ thuật xây dựng công trình giao thông (Chương trình tiên tiến)")
d580205.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580205.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580208 = utc.majors.create(
  code: "D580208",
  year: 2017,
  target: 150,
  register_status: 1
)
d580208.major_infos.create(
  name: "Kĩ thuật xây dựng ")
d580208.major_infos.create(
  name: "Kĩ thuật xây dựng công trình giao thông (Chương trình tiên tiến)")
d580208.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580205.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520103 = utc.majors.create(
  code: "D520103",
  year: 2017,
  target: 200,
  register_status: 1
)
d520103.major_infos.create(
  name: "Kĩ thuật cơ khí ")
d520103.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520103.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520207 = utc.majors.create(
  code: "D520103",
  year: 2017,
  target: 100,
  register_status: 1
)
d520207.major_infos.create(
  name: "Kĩ thuật điện tử, truyền thông")
d520207.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520207.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520201 = utc.majors.create(
  code: "D520201",
  year: 2017,
  target: 100,
  register_status: 1
)
d520201.major_infos.create(
  name: "Kĩ thuật điện, điện tử")
d520201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520216 = utc.majors.create(
  code: "D520216",
  year: 2017,
  target: 90,
  register_status: 1
)
d520216.major_infos.create(
  name: "Kĩ thuật điều khiển và tự động hóa ")
d520216.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520216.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d480201 = utc.majors.create(
  code: "D480201",
  year: 2017,
  target: 120,
  register_status: 1
)
d480201.major_infos.create(
  name: "Công nghệ thông tin")
d480201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d480201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580301 = utc.majors.create(
  code: "D580301",
  year: 2017,
  target: 140,
  register_status: 1
)
d580301.major_infos.create(
  name: "Kinh tế xây dựng ")
d580301.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580301.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d840104 = utc.majors.create(
  code: "D840104",
  year: 2017,
  target: 80,
  register_status: 1
)
d840104.major_infos.create(
  name: "Kinh tế vận tải")
d840104.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d840104.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d840101 = utc.majors.create(
  code: "D840101",
  year: 2017,
  target: 150,
  register_status: 1
)
d840101.major_infos.create(
  name: "Khai thác vận tải")
d840101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d840101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d340301 = utc.majors.create(
  code: "D840101",
  year: 2017,
  target: 100,
  register_status: 1
)
d340301.major_infos.create(
  name: "Kế toán")
d340301.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d340301.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d310101 = utc.majors.create(
  code: "D310101",
  year: 2017,
  target: 120,
  register_status: 1
)
d310101.major_infos.create(
  name: "Kinh tế")
d310101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d310101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d340101 = utc.majors.create(
  code: "D340101",
  year: 2017,
  target: 100,
  register_status: 1
)
d340101.major_infos.create(
  name: "Quản trị kinh doanh ")
d340101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d340101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d510104 = utc.majors.create(
  code: "D510104",
  year: 2017,
  target: 140,
  register_status: 1
)
d510104.major_infos.create(
  name: "Công nghệ kĩ thuật giao thông ")
d510104.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d510104.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520320 = utc.majors.create(
  code: "D520320",
  year: 2017,
  target: 100,
  register_status: 1
)
d520320.major_infos.create(
  name: "Kĩ thuật môi trường")
d520320.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520320.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

puts("Hoan thanh dai hoc UTC")
