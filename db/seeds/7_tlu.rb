tlu = University.create!(
  name: "Trường Đại học Thủy lợi",
  code: "tlu",
  email: "tlu@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  city: "Hà Nội")

kt01 = tlu.majors.create(
  code: "KT01",
  year: 2017,
  target: 300,
  register_status: 1
)
kt01.major_infos.create(
  name: "Kỹ thuật công trình thủy")
kt01.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt01.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt01.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt02 = tlu.majors.create(
  code: "KT02",
  year: 2017,
  target: 290,
  register_status: 1
)
kt02.major_infos.create(
  name: "Kỹ thuật công trình xây dựng")
kt02.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt02.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt02.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt03 = tlu.majors.create(
  code: "KT03",
  year: 2017,
  target: 190,
  register_status: 1
)
kt03.major_infos.create(
  name: "Kỹ thuật xây dựng công trình giao thông")
kt03.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt03.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt03.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt04 = tlu.majors.create(
  code: "KT04",
  year: 2017,
  target: 120,
  register_status: 1
)
kt04.major_infos.create(
  name: "Công nghệ kỹ thuật xây dựng")
kt04.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt04.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt04.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt05 = tlu.majors.create(
  code: "KT05",
  year: 2017,
  target: 140,
  register_status: 1
)
kt05.major_infos.create(
  name: "Công nghệ kỹ thuật xây dựng")
kt05.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt05.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt05.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt06 = tlu.majors.create(
  code: "KT06",
  year: 2017,
  target: 210,
  register_status: 1
)
kt06.major_infos.create(
  name: "Kỹ thuật tài nguyên nước")
kt06.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt06.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt06.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt07 = tlu.majors.create(
  code: "KT07",
  year: 2017,
  target: 50,
  register_status: 1
)
kt07.major_infos.create(
  name: "Kỹ thuật trắc địa-bản đồ")
kt07.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt07.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt07.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt08 = tlu.majors.create(
  code: "KT08",
  year: 2017,
  target: 70,
  register_status: 1
)
kt08.major_infos.create(
  name: "Kỹ thuật công trình biển")
kt08.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt08.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt08.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt09 = tlu.majors.create(
  code: "KT09",
  year: 2017,
  target: 70,
  register_status: 1
)
kt09.major_infos.create(
  name: "Kỹ thuật cơ sở hạ tầng")
kt09.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt09.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt09.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt10 = tlu.majors.create(
  code: "KT10",
  year: 2017,
  target: 120,
  register_status: 1
)
kt10.major_infos.create(
  name: "Cấp thoát nước")
kt10.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt10.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt10.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt11 = tlu.majors.create(
  code: "KT11",
  year: 2017,
  target: 210,
  register_status: 1
)
kt11.major_infos.create(
  name: "Kỹ thuật cơ khí")
kt11.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt11.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt11.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt12 = tlu.majors.create(
  code: "KT12",
  year: 2017,
  target: 140,
  register_status: 1
)
kt12.major_infos.create(
  name: "Kỹ thuật điện, điện tử")
kt12.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt12.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt12.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt13 = tlu.majors.create(
  code: "KT13",
  year: 2017,
  target: 140,
  register_status: 1
)
kt13.major_infos.create(
  name: "Kỹ thuật môi trường")
kt13.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt13.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt13.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt14 = tlu.majors.create(
  code: "KT14",
  year: 2017,
  target: 70,
  register_status: 1
)
kt14.major_infos.create(
  name: "Thủy văn")
kt14.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt14.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt14.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt15 = tlu.majors.create(
  code: "KT15",
  year: 2017,
  target: 210,
  register_status: 1
)
kt15.major_infos.create(
  name: "Công nghệ thông tin")
kt15.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt15.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt15.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt16 = tlu.majors.create(
  code: "KT16",
  year: 2017,
  target: 70,
  register_status: 1
)
kt16.major_infos.create(
  name: "Hệ thống thông tin")
kt16.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt16.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt16.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

kt17 = tlu.majors.create(
  code: "KT17",
  year: 2017,
  target: 70,
  register_status: 1
)
kt17.major_infos.create(
  name: "Kỹ thuật phần mềm")
kt17.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
kt17.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
kt17.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

ql01 = tlu.majors.create(
  code: "QL01",
  year: 2017,
  target: 120,
  register_status: 1
)
ql01.major_infos.create(
  name: "Quản trị kinh doanh")
ql01.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
ql01.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
ql01.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

ql02 = tlu.majors.create(
  code: "QL02",
  year: 2017,
  target: 210,
  register_status: 1
)
ql02.major_infos.create(
  name: "Kế toán")
ql02.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
ql02.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
ql02.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

ql03 = tlu.majors.create(
  code: "QL03",
  year: 2017,
  target: 210,
  register_status: 1
)
ql03.major_infos.create(
  name: "Kinh tế")
ql03.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
ql03.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
ql03.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)
puts("Dai hoc thuy loi")
