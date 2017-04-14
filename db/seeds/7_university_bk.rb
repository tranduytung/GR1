bka = University.create!(
  name: "Trường Đại học Bách khoa Hà Nội",
  code: "BKA",
  email: "bka@gmail.com",
  password: "123456",
  password_confirmation: "123456")
kt11 = bka.majors.create(
  code: "KT11",
  year: 2017,
  target: 200,
  register_status: 1,
)
kt11.major_infos.create(
  name: "Kỹ thuật cơ điện tử")
kt11.major_group_exams.create(
  group_exam_id: 2
  )
kt11.major_group_exams.create(
  group_exam_id: 3
  )

kt12 = bka.majors.create(
  code: "KT12",
  year: 2017,
  target: 750,
  register_status: 1,
)
kt12.major_infos.create(
  name: "Kỹ thuật cơ khí (cơ khí chế tạo và cơ khí động lực)")
kt12.major_infos.create(
  name: "Kỹ thuật hàng không")
kt12.major_infos.create(
  name: "Kỹ thuật tàu thủy")
kt12.major_group_exams.create(
  group_exam_id: 2
  )
kt12.major_group_exams.create(
  group_exam_id: 3
  )

kt13 = bka.majors.create(
  code: "KT13",
  year: 2017,
  target: 150,
  register_status: 1,
)
kt13.major_infos.create(
  name: "Kỹ thuật nhiệt")
kt13.major_group_exams.create(
  group_exam_id: 2
  )
kt13.major_group_exams.create(
  group_exam_id: 3
  )

kt14 = bka.majors.create(
  code: "KT14",
  year: 2017,
  target: 180,
  register_status: 1,
)
kt14.major_infos.create(
  name: "Kỹ thuật vật liệu")
kt14.major_infos.create(
  name: "Kỹ thuật vật liệu kim loại")
kt14.major_group_exams.create(
  group_exam_id: 2
  )
kt14.major_group_exams.create(
  group_exam_id: 3
  )

cn1 = bka.majors.create(
  code: "CN1",
  year: 2017,
  target: 300,
  register_status: 1,
)
cn1.major_infos.create(
  name: "Công nghệ chế tạo máy")
cn1.major_infos.create(
  name: "Công nghệ kỹ thuật cơ điện tử")
cn1.major_infos.create(
  name: "Công nghệ kỹ thuật ô tô")
cn1.major_group_exams.create(
  group_exam_id: 2
  )
cn1.major_group_exams.create(
  group_exam_id: 3
  )

kt21 = bka.majors.create(
  code: "KT21",
  year: 2017,
  target: 450,
  register_status: 1,
)
kt21.major_infos.create(
  name: "Kỹ thuật điện tử-truyền thông")
kt21.major_group_exams.create(
  group_exam_id: 2
  )
kt21.major_group_exams.create(
  group_exam_id: 3
  )

kt22 = bka.majors.create(
  code: "KT22",
  year: 2017,
  target: 400,
  register_status: 1,
)
kt22.major_infos.create(
  name: "Kỹ thuật máy tính")
kt22.major_infos.create(
  name: "Truyền thông và mạng máy tính")
kt22.major_infos.create(
  name: "Khoa học máy tính")
kt22.major_infos.create(
  name: "Kỹ thuật phần mềm")
kt22.major_infos.create(
  name: "Hệ thống thông tin")
kt22.major_infos.create(
  name: "Công nghệ thông tin")
kt22.major_group_exams.create(
  group_exam_id: 2
  )
kt22.major_group_exams.create(
  group_exam_id: 3
  )

kt23 = bka.majors.create(
  code: "KT23",
  year: 2017,
  target: 150,
  register_status: 1,
)
kt23.major_infos.create(
  name: "Toán-Tin")
kt23.major_infos.create(
  name: "Hệ thống thông tin Quản lý (hệ cử nhân)")
kt23.major_group_exams.create(
  group_exam_id: 2
  )
kt23.major_group_exams.create(
  group_exam_id: 3
  )

kt24 = bka.majors.create(
  code: "KT24",
  year: 2017,
  target: 470,
  register_status: 1,
)
kt24.major_infos.create(
  name: "Kỹ thuật Điện-điện tử")
kt24.major_infos.create(
  name: "Kỹ thuật Điều khiển và tự động hóa")
kt24.major_group_exams.create(
  group_exam_id: 2
  )
kt24.major_group_exams.create(
  group_exam_id: 3
  )

cn2 = bka.majors.create(
  code: "CN2",
  year: 2017,
  target: 400,
  register_status: 1,
)
cn2.major_infos.create(
  name: "Công nghệ KT Điều khiển và tự động hóa")
cn2.major_infos.create(
  name: "Công nghệ KT Điện tử-truyền thông")
cn2.major_infos.create(
  name: "Công nghệ KT Điện-điện tử")
cn2.major_infos.create(
  name: "Công nghệ thông tin")
cn2.major_group_exams.create(
  group_exam_id: 2
  )
cn2.major_group_exams.create(
  group_exam_id: 3
  )

kt31 = bka.majors.create(
  code: "KT31",
  year: 2017,
  target: 750,
  register_status: 1,
)
kt31.major_infos.create(
  name: "Công nghệ sinh học")
kt31.major_infos.create(
  name: "Kỹ thuật sinh học")
kt31.major_infos.create(
  name: "Kỹ thuật hóa học")
kt31.major_infos.create(
  name: "Công nghệ thực phẩm")
kt31.major_infos.create(
  name: "Kỹ thuật môi trường")
kt31.major_group_exams.create(
  group_exam_id: 2
  )
kt31.major_group_exams.create(
  group_exam_id: 4
  )
kt31.major_group_exams.create(
  group_exam_id: 5
  )

kt32 = bka.majors.create(
  code: "KT32",
  year: 2017,
  target: 50,
  register_status: 1,
)
kt32.major_infos.create(
  name: "Hóa học (cử nhân)")
kt32.major_group_exams.create(
  group_exam_id: 2
  )
kt32.major_group_exams.create(
  group_exam_id: 4
  )
kt32.major_group_exams.create(
  group_exam_id: 5
  )

kt33 = bka.majors.create(
  code: "KT33",
  year: 2017,
  target: 50,
  register_status: 1,
)
kt33.major_infos.create(
  name: "Kỹ thuật in và truyền thông")
kt33.major_group_exams.create(
  group_exam_id: 2
  )
kt33.major_group_exams.create(
  group_exam_id: 4
  )
kt33.major_group_exams.create(
  group_exam_id: 5
  )
cn3 = bka.majors.create(
  code: "CN3",
  year: 2017,
  target: 50,
  register_status: 1,
)
cn3.major_infos.create(
  name: "Công nghệ thực phẩm")
cn3.major_group_exams.create(
  group_exam_id: 2
  )
cn3.major_group_exams.create(
  group_exam_id: 4
  )
cn3.major_group_exams.create(
  group_exam_id: 5
  )

kt41 = bka.majors.create(
  code: "KT41",
  year: 2017,
  target: 170,
  register_status: 1,
)
kt41.major_infos.create(
  name: "Kỹ thuật dệt")
kt41.major_infos.create(
  name: "Công nghệ may")
kt41.major_infos.create(
  name: "Công nghệ da giầy")
kt41.major_group_exams.create(
  group_exam_id: 2
  )
kt41.major_group_exams.create(
  group_exam_id: 3
  )

kt42 = bka.majors.create(
  code: "KT42",
  year: 2017,
  target: 50,
  register_status: 1,
)
kt42.major_infos.create(
  name: "Sư phạm kỹ thuật công nghiệp (cử nhân)")
kt42.major_group_exams.create(
  group_exam_id: 2
  )
kt42.major_group_exams.create(
  group_exam_id: 3
  )
kt51 = bka.majors.create(
  code: "KT51",
  year: 2017,
  target: 120,
  register_status: 1,
)
kt51.major_infos.create(
  name: "Vật lý kỹ thuật")
kt51.major_group_exams.create(
  group_exam_id: 2
  )
kt51.major_group_exams.create(
  group_exam_id: 3
  )
kt52 = bka.majors.create(
  code: "KT52",
  year: 2017,
  target: 100,
  register_status: 1,
)
kt52.major_infos.create(
  name: "Kỹ thuật hạt nhân")
kt52.major_group_exams.create(
  group_exam_id: 2
  )
kt52.major_group_exams.create(
  group_exam_id: 3
  )

kq1 = bka.majors.create(
  code: "KQ1",
  year: 2017,
  target: 160,
  register_status: 1,
)
kq1.major_infos.create(
  name: "Kinh tế công nghiệp")
kq1.major_infos.create(
  name: "Quản lý công nghiệp")
kq1.major_group_exams.create(
  group_exam_id: 2
  )
kq1.major_group_exams.create(
  group_exam_id: 3
  )
kq1.major_group_exams.create(
  group_exam_id: 1
  )
kq2 = bka.majors.create(
  code: "KQ2",
  year: 2017,
  target: 80,
  register_status: 1,
)
kq2.major_infos.create(
  name: "Quản trị kinh doanh")
kq2.major_group_exams.create(
  group_exam_id: 2
  )
kq2.major_group_exams.create(
  group_exam_id: 3
  )
kq2.major_group_exams.create(
  group_exam_id: 1
  )
kq3 = bka.majors.create(
  code: "KQ3",
  year: 2017,
  target: 80,
  register_status: 1,
)
kq3.major_infos.create(
  name: "Kế toán")
kq3.major_infos.create(
  name: "Tài chính-Ngân hàng")
kq3.major_group_exams.create(
  group_exam_id: 2
  )
kq3.major_group_exams.create(
  group_exam_id: 3
  )
kq3.major_group_exams.create(
  group_exam_id: 1
  )
ta1 = bka.majors.create(
  code: "TA1",
  year: 2017,
  target: 80,
  register_status: 1,
)
ta1.major_infos.create(
  name: "Tiếng Anh KHKT và công nghệ")
ta1.major_group_exams.create(
  group_exam_id: 1
  )
ta2 = bka.majors.create(
  code: "TA2",
  year: 2017,
  target: 80,
  register_status: 1,
)
ta2.major_infos.create(
  name: "Tiếng Anh chuyên nghiệp quốc tế")
ta2.major_group_exams.create(
  group_exam_id: 1
  )
tt1 = bka.majors.create(
  code: "TT1",
  year: 2017,
  target: 120,
  register_status: 1,
)
tt1.major_infos.create(
  name: "Chương trình tiên tiến ngành Điện-Điện tử")
tt1.major_group_exams.create(
  group_exam_id: 2
  )
tt1.major_group_exams.create(
  group_exam_id: 3
  )

tt2 = bka.majors.create(
  code: "TT2",
  year: 2017,
  target: 80,
  register_status: 1,
)
tt2.major_infos.create(
  name: "Chương trình tiên tiến ngành Cơ Điện tử")
tt2.major_group_exams.create(
  group_exam_id: 2
  )
tt2.major_group_exams.create(
  group_exam_id: 3
  )
tt3 = bka.majors.create(
  code: "TT3",
  year: 2017,
  target: 40,
  register_status: 1,
)
tt3.major_infos.create(
  name: "Chương trình tiên tiến ngành Khoa học và Kỹ thuật vật liệu")
tt3.major_group_exams.create(
  group_exam_id: 2
  )
tt3.major_group_exams.create(
  group_exam_id: 3
  )
tt4 = bka.majors.create(
  code: "TT4",
  year: 2017,
  target: 50,
  register_status: 1,
)
tt4.major_infos.create(
  name: "Chương trình tiên tiến ngành Kỹ thuật Y sinh")
tt4.major_group_exams.create(
  group_exam_id: 2
  )
tt4.major_group_exams.create(
  group_exam_id: 3
  )
tt5 = bka.majors.create(
  code: "TT5",
  year: 2017,
  target: 180,
  register_status: 1,
)
tt5.major_infos.create(
  name: "Chương trình tiên tiến Công nghệ thông tin Việt-Nhật")
tt5.major_infos.create(
  name: "Chương trình tiên tiến Công nghệ thông tin ICT")
tt5.major_group_exams.create(
  group_exam_id: 2
  )
tt5.major_group_exams.create(
  group_exam_id: 3
  )
qt11 = bka.majors.create(
  code: "QT11",
  year: 2017,
  target: 80,
  register_status: 1,
)
qt11.major_infos.create(
  name: "Cơ điện tử - NUT (ĐH Nagaoka - Nhật Bản)")
qt11.major_group_exams.create(
  group_exam_id: 2
  )
qt11.major_group_exams.create(
  group_exam_id: 3
  )
qt11.major_group_exams.create(
  group_exam_id: 5
  )
qt12 = bka.majors.create(
  code: "QT12",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt12.major_infos.create(
  name: "Điện tử -Viễn thông - LUH (ĐH Leibniz Hannover - Đức)")
qt12.major_group_exams.create(
  group_exam_id: 2
  )
qt12.major_group_exams.create(
  group_exam_id: 3
  )
qt12.major_group_exams.create(
  group_exam_id: 5
  )
qt13 = bka.majors.create(
  code: "QT13",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt13.major_infos.create(
  name: "Hệ thống thông tin – G.INP (ĐH Grenoble – Pháp)")
qt13.major_group_exams.create(
  group_exam_id: 2
  )
qt13.major_group_exams.create(
  group_exam_id: 3
  )
qt13.major_group_exams.create(
  group_exam_id: 5
  )
qt14 = bka.majors.create(
  code: "QT14",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt14.major_infos.create(
  name: "Công nghệ thông tin - LTU (ĐH La Trobe – Úc)")
qt14.major_group_exams.create(
  group_exam_id: 2
  )
qt14.major_group_exams.create(
  group_exam_id: 3
  )
qt14.major_group_exams.create(
  group_exam_id: 5
  )
qt15 = bka.majors.create(
  code: "QT15",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt15.major_infos.create(
  name: "Kỹ thuật phần mềm – VUW IT (ĐH Victoria - New Zealand)")
qt15.major_group_exams.create(
  group_exam_id: 2
  )
qt15.major_group_exams.create(
  group_exam_id: 3
  )
qt15.major_group_exams.create(
  group_exam_id: 5
  )
qt21 = bka.majors.create(
  code: "QT21",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt21.major_infos.create(
  name: "Quản trị kinh doanh - VUW (ĐH Victoria - New Zealand)")
qt21.major_group_exams.create(
  group_exam_id: 2
  )
qt21.major_group_exams.create(
  group_exam_id: 3
  )
qt21.major_group_exams.create(
  group_exam_id: 5
  )
qt31 = bka.majors.create(
  code: "QT31",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt31.major_infos.create(
  name: "Quản trị kinh doanh – TROY BA (ĐH Troy - Hoa Kỳ)")
qt31.major_group_exams.create(
  group_exam_id: 2
  )
qt31.major_group_exams.create(
  group_exam_id: 3
  )
qt31.major_group_exams.create(
  group_exam_id: 5
  )
qt32 = bka.majors.create(
  code: "QT32",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt32.major_infos.create(
  name: "Khoa học máy tính – TROY - IT (ĐH Troy - Hoa Kỳ)")
qt32.major_group_exams.create(
  group_exam_id: 2
  )
qt32.major_group_exams.create(
  group_exam_id: 3
  )
qt32.major_group_exams.create(
  group_exam_id: 5
  )
qt33 = bka.majors.create(
  code: "QT33",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt33.major_infos.create(
  name: "Quản trị kinh doanh - UPMF (ĐH Pierre Mendes France – Pháp)")
qt33.major_group_exams.create(
  group_exam_id: 2
  )
qt33.major_group_exams.create(
  group_exam_id: 3
  )
qt33.major_group_exams.create(
  group_exam_id: 5
  )
qt34 = bka.majors.create(
  code: "QT34",
  year: 2017,
  target: 50,
  register_status: 1,
)
qt34.major_infos.create(
  name: "Quản lý công nghiệp Chuyên ngành Kỹ thuật hệ thống công nghiệp(Industrial System Engineering)")
qt34.major_group_exams.create(
  group_exam_id: 2
  )
qt34.major_group_exams.create(
  group_exam_id: 3
  )
qt34.major_group_exams.create(
  group_exam_id: 5
  )
puts("Hoan thanh dai hoc BK")
