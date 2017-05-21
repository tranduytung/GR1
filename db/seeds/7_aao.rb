aao = University.create!(
  name: "Trường Đại học Bách khoa TPHCM",
  code: "aao",
  email: "aao@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  city: "TP HCM")

d480101 = aao.majors.create(
  code: "D480101",
  year: 2017,
  target: 200,
  register_status: 1
)
d480101.major_infos.create(
  name: "Khoa học máy tính")
d480101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d480101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520214 = aao.majors.create(
  code: "D520214",
  year: 2017,
  target: 200,
  register_status: 1
)
d520214.major_infos.create(
  name: "Kỹ thuật máy tính")
d520214.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520214.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520207 = aao.majors.create(
  code: "D520207",
  year: 2017,
  target: 200,
  register_status: 1
)
d520207.major_infos.create(
  name: "Kỹ thuật điện tử, truyền thông")
d520207.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520207.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520201 = aao.majors.create(
  code: "D520201",
  year: 2017,
  target: 200,
  register_status: 1
)
d520201.major_infos.create(
  name: "Kỹ thuật điện, điện tử")
d520201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520216 = aao.majors.create(
  code: "D520216",
  year: 2017,
  target: 200,
  register_status: 1
)
d520216.major_infos.create(
  name: "Kỹ thuật điều khiển và tự động hoá")
d520216.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520216.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520114 = aao.majors.create(
  code: "D520114",
  year: 2017,
  target: 120,
  register_status: 1
)
d520114.major_infos.create(
  name: "Kỹ thuật cơ - điện tử")
d520114.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520114.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520103 = aao.majors.create(
  code: "D520103",
  year: 2017,
  target: 120,
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

d520115 = aao.majors.create(
  code: "D520115",
  year: 2017,
  target: 120,
  register_status: 1
)
d520115.major_infos.create(
  name: "Kỹ thuật nhiệt")
d520115.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520115.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d540201 = aao.majors.create(
  code: "D540201",
  year: 2017,
  target: 50,
  register_status: 1
)
d540201.major_infos.create(
  name: "Kỹ thuật dệt")
d540201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d540201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d540204 = aao.majors.create(
  code: "D540204",
  year: 2017,
  target: 50,
  register_status: 1
)
d540204.major_infos.create(
  name: "Công nghệ may")
d540204.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d540204.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d420201 = aao.majors.create(
  code: "D420201",
  year: 2017,
  target: 100,
  register_status: 1
)
d420201.major_infos.create(
  name: "Công nghệ sinh học")
d420201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d420201.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)
d420201.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)


d420301 = aao.majors.create(
  code: "D420301",
  year: 2017,
  target: 100,
  register_status: 1
)
d420301.major_infos.create(
  name: "Kỹ thuật hoá học")
d420301.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d420301.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)
d420301.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

d420101 = aao.majors.create(
  code: "D420101",
  year: 2017,
  target: 100,
  register_status: 1
)
d420101.major_infos.create(
  name: "Công nghệ thực phẩm")
d420101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d420101.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)
d420101.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

d580201 = aao.majors.create(
  code: "D580201",
  year: 2017,
  target: 100,
  register_status: 1
)
d580201.major_infos.create(
  name: "Kỹ thuật công trình xây dựng")
d580201.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580201.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580205 = aao.majors.create(
  code: "D580205",
  year: 2017,
  target: 100,
  register_status: 1
)
d580205.major_infos.create(
  name: "Kỹ thuật xây dựng công trình giao thông")
d580205.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580205.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580203 = aao.majors.create(
  code: "D580203",
  year: 2017,
  target: 100,
  register_status: 1
)
d580203.major_infos.create(
  name: "Kỹ thuật công trình biển")
d580203.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580203.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580211 = aao.majors.create(
  code: "D580211",
  year: 2017,
  target: 100,
  register_status: 1
)
d580211.major_infos.create(
  name: "Kỹ thuật cơ sở hạ tầng")
d580211.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580211.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d580202 = aao.majors.create(
  code: "D580202",
  year: 2017,
  target: 100,
  register_status: 1
)
d580202.major_infos.create(
  name: "Kỹ thuật công trình thuỷ")
d580202.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d580202.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520501 = aao.majors.create(
  code: "D520501",
  year: 2017,
  target: 70,
  register_status: 1
)
d520501.major_infos.create(
  name: "Kỹ thuật địa chất")
d520501.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520501.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520604 = aao.majors.create(
  code: "D520604",
  year: 2017,
  target: 70,
  register_status: 1
)
d520604.major_infos.create(
  name: "Kỹ thuật dầu khí")
d520604.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520604.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d510601 = aao.majors.create(
  code: "D510601",
  year: 2017,
  target: 70,
  register_status: 1
)
d510601.major_infos.create(
  name: "Quản lý công nghiệp")
d510601.major_group_exams.create(
  group_exam_id: 1,
  benchmark1_last_year: 24
)
d510601.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d510601.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
d510601.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

d520320 = aao.majors.create(
  code: "D520320",
  year: 2017,
  target: 80,
  register_status: 1
)
d520320.major_infos.create(
  name: "Kỹ thuật môi trường")
d520320.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520320.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)
d520320.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

d850101 = aao.majors.create(
  code: "D850101",
  year: 2017,
  target: 80,
  register_status: 1
)
d850101.major_infos.create(
  name: "Quản lý tài nguyên và môi trường")
d850101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d850101.major_group_exams.create(
  group_exam_id: 4,
  benchmark1_last_year: 24
)
d850101.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

d520120 = aao.majors.create(
  code: "D520120",
  year: 2017,
  target: 60,
  register_status: 1
)
d520120.major_infos.create(
  name: "Kỹ thuật hàng không")
d520120.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520120.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d510205 = aao.majors.create(
  code: "D510205",
  year: 2017,
  target: 60,
  register_status: 1
)
d510205.major_infos.create(
  name: "Công nghệ kỹ thuật ô tô")
d510205.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d510205.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520122 = aao.majors.create(
  code: "D520122",
  year: 2017,
  target: 60,
  register_status: 1
)
d520122.major_infos.create(
  name: "Kỹ thuật tàu thuỷ")
d520122.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520122.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d510602 = aao.majors.create(
  code: "D510602",
  year: 2017,
  target: 80,
  register_status: 1
)
d510602.major_infos.create(
  name: "Kỹ thuật Hệ thống công nghiệp")
d510602.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d510602.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520309 = aao.majors.create(
  code: "D520309",
  year: 2017,
  target: 200,
  register_status: 1
)
d520309.major_infos.create(
  name: "Kỹ thuật Vật liệu")
d520309.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520309.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
d520309.major_group_exams.create(
  group_exam_id: 5,
  benchmark1_last_year: 24
)

d520503 = aao.majors.create(
  code: "D520503",
  year: 2017,
  target: 70,
  register_status: 1
)
d520503.major_infos.create(
  name: "Kỹ thuật Trắc địa - bản đồ")
d520503.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520503.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d510105 = aao.majors.create(
  code: "D510105",
  year: 2017,
  target: 70,
  register_status: 1
)
d510105.major_infos.create(
  name: "Công nghệ kỹ thuật vật liệu xây dựng")
d510105.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d510105.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520401 = aao.majors.create(
  code: "D520401",
  year: 2017,
  target: 75,
  register_status: 1
)
d520401.major_infos.create(
  name: "Vật lý kỹ thuật")
d520401.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520401.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)

d520101 = aao.majors.create(
  code: "D520101",
  year: 2017,
  target: 75,
  register_status: 1
)
d520101.major_infos.create(
  name: "Cơ kỹ thuật")
d520101.major_group_exams.create(
  group_exam_id: 2,
  benchmark1_last_year: 24
)
d520101.major_group_exams.create(
  group_exam_id: 3,
  benchmark1_last_year: 24
)
