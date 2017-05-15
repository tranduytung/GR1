nuce = University.create!(
  name: "Trường Đại học Xây dựng",
  code: "NUCE",
  email: "nuce@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  city: "Hà Nội")

d580102 = nuce.majors.create(
  code: "D580102",
  year: 2017,
  target: 400,
  register_status: 1
)
d580102.major_infos.create(
  name: "Kiến trúc")
d580102.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)

d580105 = nuce.majors.create(
  code: "D580105",
  year: 2017,
  target: 100,
  register_status: 1
)
d580105.major_infos.create(
  name: "Quy hoạch vùng và đô thị")
d580105.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)

d580201 = nuce.majors.create(
  code: "D580201",
  year: 2017,
  target: 600,
  register_status: 1
)
d580201.major_infos.create(
  name: "Kỹ thuật công trình xây dựng")
d580201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 23
)
d580201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 23
)

d580205 = nuce.majors.create(
  code: "D580205",
  year: 2017,
  target: 350,
  register_status: 1
)
d580205.major_infos.create(
  name: "Kỹ thuật xây dựng công trình Giao thông")
d580205.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 23
)
d580205.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 23
)

d110104 = nuce.majors.create(
  code: "D110104",
  year: 2017,
  target: 350,
  register_status: 1
)
d110104.major_infos.create(
  name: "Cấp thoát nước")
d110104.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 23
)
d110104.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 23
)

d510406 = nuce.majors.create(
  code: "D510406",
  year: 2017,
  target: 150,
  register_status: 1
)
d510406.major_infos.create(
  name: "Công nghệ Kỹ thuật Môi trường")
d510406.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)

d580203 = nuce.majors.create(
  code: "D580203",
  year: 2017,
  target: 150,
  register_status: 1
)
d580203.major_infos.create(
  name: "Kỹ thuật Công trình biển")
d580203.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580203.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d510105 = nuce.majors.create(
  code: "D510105",
  year: 2017,
  target: 150,
  register_status: 1
)
d510105.major_infos.create(
  name: "Công nghệ kỹ thuật Vật liệu xây dựng")
d510105.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)

d480201 = nuce.majors.create(
  code: "D480201",
  year: 2017,
  target: 100,
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

d520103 = nuce.majors.create(
  code: "D520103",
  year: 2017,
  target: 150,
  register_status: 1
)
d520103.major_infos.create(
  name: "Kỹ thuật cơ khí")
d520103.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520103.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520503 = nuce.majors.create(
  code: "D520503",
  year: 2017,
  target: 150,
  register_status: 1
)
d520503.major_infos.create(
  name: "Kỹ thuật trắc địa - bản đồ")
d520503.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520503.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580301 = nuce.majors.create(
  code: "D580301",
  year: 2017,
  target: 400,
  register_status: 1
)
d580301.major_infos.create(
  name: "Kinh tế xây dựng")
d580301.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580301.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580302 = nuce.majors.create(
  code: "D580302",
  year: 2017,
  target: 400,
  register_status: 1
)
d580302.major_infos.create(
  name: "Quản lí xây dựng")
d580302.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580302.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

puts("Hoan thanh dai hoc XD")
