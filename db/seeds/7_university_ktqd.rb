neu = University.create!(
  name: "TRƯỜNG ĐẠI HỌC KINH TẾ QUỐC DÂN",
  code: "NEU",
  email: "neu@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  city: "Hà Nội")
d310101 = neu.majors.create(
  code: "D310101",
  year: 2017,
  target: 750,
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
  benchmark1_last_year: 25
  )
d310101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )
d310104 = neu.majors.create(
  code: "D310104",
  year: 2017,
  target: 200,
  register_status: 1
)
d310104.major_infos.create(
  name: "Kinh tế đầu tư (dự kiến)")
d310104.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d310104.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d310104.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d310106 = neu.majors.create(
  code: "D310106",
  year: 2017,
  target: 120,
  register_status: 1
)
d310106.major_infos.create(
  name: "Kinh tế quốc tế")
d310106.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d310106.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d310106.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d340101 = neu.majors.create(
  code: "D340101",
  year: 2017,
  target: 300,
  register_status: 1
)
d340101.major_infos.create(
  name: "Quản trị kinh doanh")
d340101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d340107 = neu.majors.create(
  code: "D340107",
  year: 2017,
  target: 70,
  register_status: 1
)
d340107.major_infos.create(
  name: "Quản trị khách sạn")
d340107.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340107.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340107.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d340103 = neu.majors.create(
  code: "D340103",
  year: 2017,
  target: 120,
  register_status: 1
)
d340103.major_infos.create(
  name: "Quản trị dịch vụ du lịch và lữ hành")
d340103.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340103.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340103.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d340404 = neu.majors.create(
  code: "D340404",
  year: 2017,
  target: 120,
  register_status: 1
)
d340404.major_infos.create(
  name: "Quản trị nhân lực")
d340404.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340404.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340404.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )


d340120 = neu.majors.create(
  code: "D340120",
  year: 2017,
  target: 140,
  register_status: 1
)
d340120.major_infos.create(
  name: "Kinh doanh quốc tế")
d340120.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340120.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340120.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d340121 = neu.majors.create(
  code: "D340121",
  year: 2017,
  target: 170,
  register_status: 1
)
d340121.major_infos.create(
  name: "Kinh doanh thương mại")
d340121.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340121.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340121.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d340201 = neu.majors.create(
  code: "D340201",
  year: 2017,
  target: 520,
  register_status: 1
)
d340201.major_infos.create(
  name: "Tài chính - Ngân hàng")
d340201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340201.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d340202 = neu.majors.create(
  code: "D340202",
  year: 2017,
  target: 140,
  register_status: 1
)
d340202.major_infos.create(
  name: "Bảo hiểm")
d340202.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340202.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )
d340202.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )

d340301 = neu.majors.create(
  code: "D340301",
  year: 2017,
  target: 400,
  register_status: 1
)
d340301.major_infos.create(
  name: "Kế toán")
d340301.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340301.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )
d340301.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )

d340115 = neu.majors.create(
  code: "D340115",
  year: 2017,
  target: 200,
  register_status: 1
)
d340115.major_infos.create(
  name: "Marketing")
d340115.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340115.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )
d340115.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )

d340116 = neu.majors.create(
  code: "D340116",
  year: 2017,
  target: 130,
  register_status: 1
)
d340116.major_infos.create(
  name: "Bất động sản")
d340116.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340116.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )
d340116.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )

d340405 = neu.majors.create(
  code: "D340405",
  year: 2017,
  target: 120,
  register_status: 1
)
d340405.major_infos.create(
  name: "Hệ thống thông tin quản lý")
d340405.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d340405.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d340405.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )

d380101 = neu.majors.create(
  code: "D380101",
  year: 2017,
  target: 120,
  register_status: 1
)
d380101.major_infos.create(
  name: "Luật")
d380101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d380101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d380101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )
d480101 = neu.majors.create(
  code: "D480101",
  year: 2017,
  target: 120,
  register_status: 1
)
d480101.major_infos.create(
  name: "Khoa học máy tính (Công nghệ thông tin)")
d480101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d480101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d380101.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )
d620115 = neu.majors.create(
  code: "D620115",
  year: 2017,
  target: 90,
  register_status: 1
)
d620115.major_infos.create(
  name: "Kinh tế nông nghiệp")
d620115.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d620115.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d620115.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d110105 = neu.majors.create(
  code: "D110105",
  year: 2017,
  target: 120,
  register_status: 1
)
d110105.major_infos.create(
  name: "Thống kê kinh tếp")
d110105.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d110105.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d110105.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d110106 = neu.majors.create(
  code: "D110106",
  year: 2017,
  target: 120,
  register_status: 1
)
d110106.major_infos.create(
  name: "Toán ứng dụng trong kinh tế")
d110106.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d110106.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d110106.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d110107 = neu.majors.create(
  code: "D110107",
  year: 2017,
  target: 80,
  register_status: 1
)
d110107.major_infos.create(
  name: "Kinh tế tài nguyên")
d110107.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d110107.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d110107.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d110109 = neu.majors.create(
  code: "D110109",
  year: 2017,
  target: 80,
  register_status: 1
)
d110109.major_infos.create(
  name: "Quản trị kinh doanh học bằng tiếng Anh (E-BBA)")
d110109.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d110109.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d110109.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d310103 = neu.majors.create(
  code: "D310103",
  year: 2017,
  target: 50,
  register_status: 1
)
d310103.major_infos.create(
  name: "Quản lý công và chính sách bằng tiếng Anh (E- PMP)(dự kiến)")
d310103.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
  )
d310103.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 25
  )
d310103.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24.5
  )

d220201 = neu.majors.create(
  code: "D220201",
  year: 2017,
  target: 120,
  register_status: 1
)
d220201.major_infos.create(
  name: "Ngôn ngữ Anh")
d220201.major_group_exams.create(
  group_exam_id: 6,
  benchmark1_last_year: 29
  )
puts("Hoan thanh dai hoc KTQD")
