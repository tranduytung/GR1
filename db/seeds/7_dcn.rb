dcn = University.create!(
  name: "Trường Đại học công nghiệp Hà Nội",
  code: "DCN",
  email: "dcn@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  city: "Hà Nội")

d52510201 = dcn.majors.create(
  code: "D510201",
  year: 2017,
  target: 520,
  register_status: 1
)
d52510201.major_infos.create(
  name: "Công nghệ kỹ thuật Cơ khí")
d52510201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510203 = dcn.majors.create(
  code: "D510203",
  year: 2017,
  target: 210,
  register_status: 1
)
d52510203.major_infos.create(
  name: "Công nghệ kỹ thuật Cơ điện tử")
d52510203.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510203.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510205 = dcn.majors.create(
  code: "D510205",
  year: 2017,
  target: 420,
  register_status: 1
)
d52510205.major_infos.create(
  name: "Công nghệ kỹ thuật Ô tô")
d52510205.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510205.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510302 = dcn.majors.create(
  code: "D510302",
  year: 2017,
  target: 450,
  register_status: 1
)
d52510302.major_infos.create(
  name: "Công nghệ kỹ thuật điện tử, truyền thông (CNKT điện tử)")
d52510302.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510302.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52480102 = dcn.majors.create(
  code: "D480102",
  year: 2017,
  target: 80,
  register_status: 1
)
d52480102.major_infos.create(
  name: "Truyền thông và mạng máy tính")
d52480102.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52480102.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510304 = dcn.majors.create(
  code: "D510304",
  year: 2017,
  target: 150,
  register_status: 1
)
d52510304.major_infos.create(
  name: "Công nghệ kỹ thuật máy tính")
d52510304.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510304.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510301 = dcn.majors.create(
  code: "D510304",
  year: 2017,
  target: 510,
  register_status: 1
)
d52510301.major_infos.create(
  name: "Công nghệ kỹ thuật điện, điện tử (CNKT Điện)")
d52510301.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510301.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510303 = dcn.majors.create(
  code: "D510303",
  year: 2017,
  target: 210,
  register_status: 1
)
d52510303.major_infos.create(
  name: "Công nghệ kỹ thuật điều khiển và tự động hóa")
d52510303.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510303.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510206 = dcn.majors.create(
  code: "D510206",
  year: 2017,
  target: 140,
  register_status: 1
)
d52510206.major_infos.create(
  name: "Công nghệ kỹ thuật nhiệt (CNKT Nhiệt lạnh)")
d52510206.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510206.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52480101 = dcn.majors.create(
  code: "D480101",
  year: 2017,
  target: 140,
  register_status: 1
)
d52480101.major_infos.create(
  name: "Khoa học máy tính")
d52480101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52480101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52480101_QT = dcn.majors.create(
  code: "D480101_QT",
  year: 2017,
  target: 40,
  register_status: 1
)
d52480101_QT.major_infos.create(
  name: "Khoa học máy tính (Liên kết với ĐH Frostburg – Hoa Kỳ)")
d52480101_QT.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52480101_QT.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52480104 = dcn.majors.create(
  code: "D480104",
  year: 2017,
  target: 140,
  register_status: 1
)
d52480104.major_infos.create(
  name: "Hệ thống thông tin")
d52480104.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52480104.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52480103 = dcn.majors.create(
  code: "D480103",
  year: 2017,
  target: 200,
  register_status: 1
)
d52480103.major_infos.create(
  name: "Kỹ thuật phần mềm")
d52480103.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52480103.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52480201 = dcn.majors.create(
  code: "D480201",
  year: 2017,
  target: 240,
  register_status: 1
)
d52480201.major_infos.create(
  name: "Công nghệ thông tin ")
d52480201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52480201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52340301 = dcn.majors.create(
  code: "D340301",
  year: 2017,
  target: 740,
  register_status: 1
)
d52340301.major_infos.create(
  name: "Kế toán")
d52340301.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52340301.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52340301.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52340201 = dcn.majors.create(
  code: "D340201",
  year: 2017,
  target: 240,
  register_status: 1
)
d52340201.major_infos.create(
  name: "Tài chính ngân hàng")
d52340201.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52340201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52340201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52340101 = dcn.majors.create(
  code: "D340101",
  year: 2017,
  target: 740,
  register_status: 1
)
d52340101.major_infos.create(
  name: "Quản trị kinh doanh")
d52340101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52340101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52340101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52340302 = dcn.majors.create(
  code: "D340302",
  year: 2017,
  target: 140,
  register_status: 1
)
d52340302.major_infos.create(
  name: "Kiểm toán")
d52340302.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52340302.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52340302.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52340406 = dcn.majors.create(
  code: "D340406",
  year: 2017,
  target: 140,
  register_status: 1
)
d52340406.major_infos.create(
  name: "Quản trị văn phòng")
d52340406.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52340406.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52340406.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52340404 = dcn.majors.create(
  code: "D340404",
  year: 2017,
  target: 140,
  register_status: 1
)
d52340404.major_infos.create(
  name: "Quản trị nhân lực")
d52340404.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52340404.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52340404.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52340115 = dcn.majors.create(
  code: "D340115",
  year: 2017,
  target: 80,
  register_status: 1
)
d52340115.major_infos.create(
  name: "Marketing")
d52340115.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52340115.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52340115.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52540204 = dcn.majors.create(
  code: "D540204",
  year: 2017,
  target: 200,
  register_status: 1
)
d52540204.major_infos.create(
  name: "Công nghệ may")
d52540204.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52540204.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52540204.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52210404 = dcn.majors.create(
  code: "D210404",
  year: 2017,
  target: 50,
  register_status: 1
)
d52210404.major_infos.create(
  name: "Thiết kế thời trang")
d52210404.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52210404.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52210404.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d52510401 = dcn.majors.create(
  code: "D510401",
  year: 2017,
  target: 100,
  register_status: 1
)
d52510401.major_infos.create(
  name: "Công nghệ kỹ thuật hóa học")
d52510401.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)
d52510401.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510401.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)

d52510406 = dcn.majors.create(
  code: "D510406",
  year: 2017,
  target: 80,
  register_status: 1
)
d52510406.major_infos.create(
  name: "Công nghệ kỹ thuật môi trường")
d52510406.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)
d52510406.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d52510406.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)

d52220113 = dcn.majors.create(
  code: "D220113",
  year: 2017,
  target: 40,
  register_status: 1
)
d52220113.major_infos.create(
  name: "Việt Nam học (Hướng dẫn du lịch)")
d52220113.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d52220113.major_group_exams.create(
  group_exam_id: 7,
  benchmark1_last_year: 24
)
d52220113.major_group_exams.create(
  group_exam_id: 8,
  benchmark1_last_year: 24
)

puts("Hoan thanh dcn")
