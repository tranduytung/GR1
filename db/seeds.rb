Admin.create(
  name: "Admin",
  email: "admin@gmail.com",
  password: "123456",
  password_confirmation: "123456",
  phone: "123456780")
ho = ["Nguyễn","Trần","Lê","Phạm","Hoàng","Huỳnh","Phan","Vũ","Võ","Đặng","Bùi","Đỗ","Hồ","Ngô","Dương","Lý"]

nam_name = ["Bảo An"," Nhật An"," Khiết An"," Lộc An"," Duy An"," Đăng An"," Kỳ An"," Xuân An"," Trọng An"," Hải An"," Thanh An"," Hòa An"," Thành An"," Ngọc An"," Thế An"," Minh An"," Đức An"," Phú An"," Hoàng An"," Tường An","Bảo Anh"," Nhật Anh"," Duy Anh"," Hùng Anh"," Đức Anh"," Trung Anh"," Nghĩa Anh"," Huy Anh"," Tuấn Anh"," Hoàng Anh"," Vũ Anh"," Quang Anh"," Hồng Anh"," Tinh Anh"," Bảo Anh"," Viết Anh"," Việt Anh"," Sỹ Anh"," Huỳnh Anh","Hoàng Bách"," Hùng Bách"," Tùng Bách"," Thuận Bách"," Vạn Bách"," Xuân Bách"," Việt Bách"," Văn Bách"," Cao Bách"," Quang Bách"," Huy Bách","Chi Bảo"," Gia Bảo"," Duy Bảo"," Đức Bảo"," Hữu Bảo"," Quốc Bảo"," Tiểu Bảo"," Tri Bảo"," Hoàng Bảo"," Quang Bảo"," Thiện Bảo"," Nguyên Bảo"," Thái Bảo"," Kim Bảo"," Thiên Bảo"," Hoài Bảo"," Minh Bảo","Chí Công"," Thành Công"," Đức Công"," Duy Công"," Đạt Công"," Kỳ Công"," Hồng Công"," Quang Công"," Tiến Công"," Minh Công"," Ngọc Công"," Hữu Công","Anh Cường"," Cao Cường"," Đức Cường"," Hữu Cường"," Hùng Cường"," Phi Cường"," Đình Cường"," Mạnh Cường"," Quốc Cường"," Việt Cường","  Dũng Cường"," Thịnh Cường"," Văn Cường"," Chí Cường"," Tuấn Cường"," Minh Cường","Minh Đức"," Anh Đức"," Tuấn Đức"," Hoài Đức"," Hồng Đức"," Nhân Đức"," Bảo Đức"," Thành Đức"," Vĩnh Đức"," Trung Đức"," Trọng Đức"," Nguyên Đức"," Việt Đức"," Thế Đức"," Mạnh Đức"," Huy Đức"," Phúc Đức","Anh Dũng"," Chí Dũng"," Hoàng Dũng"," Lâm Dũng"," Mạnh Dũng"," Nghĩa Dũng"," Quang Dũng"," Ngọc Dũng"," Thế Dũng"," Tấn Dũng"," Trung Dũng"," Tuân Dũng"," Trí Dũng"," Việt Dũng"," Quốc Dũng"," Bá Dũng"," Hùng Dũng","Hải Dương"," Viễn Dương"," Nam Dương"," Đông Dương"," Quang Dương"," Thái Dương"," Việt Dương"," Bình Dương"," Bảo Dương"," Trung Dương"," Hoàng Dương"," Tùng Dương","Khoa Đạt"," Thành Đạt"," Hùng Đạt"," Khánh Đạt"," Tuấn Đạt"," Tiến Đạt"," Duy Đạt"," Trí Đạt"," Vĩnh Đạt"," Xuân Đạt"," Tấn Đạt"," Mạnh Đạt"," Minh Đạt"," Quốc Đạt"," Bá Đạt"," Quang Đạt","Anh Duy"," Bảo Duy"," Đức Duy"," Khắc Duy"," Khánh Duy"," Nhật Duy"," Phúc Duy"," Thái Duy"," Trọng Duy"," Việt Duy"," Hoàng Duy"," Thanh Duy"," Quang Duy"," Ngọc Duy","An Gia"," Đạt Gia"," Phú Gia"," Vinh Gia"," Thành Gia"," Nhân Gia"," Đức Gia"," Hoàng Gia"," Lữ Gia"," Khương Gia","Đức Hải"," Sơn Hải"," Đông Hải"," Vĩnh Hải"," Phi Hải"," Việt Hải"," Hoàng Hải"," Minh Hải"," Nam Hải"," Quang Hải"," Trường Hải"," Quốc Hải"," Hồng Hải"," Thanh Hải"," Tuấn Hải","Chí Hiếu"," Trung Hiếu"," Thuận Hiếu"," Duy Hiếu"," Khắc Hiếu"," Quốc Hiếu"," Nghĩa Hiếu"," Trọng Hiếu"," Ngọc Hiếu"," Minh Hiếu"," Xuân Hiếu"," Đình Hiếu"," Quang Hiếu","Bảo Hoàng"," Quý Hoàng"," Đức Hoàng"," Kim Hoàng"," Sỹ Hoàng"," Bảo Hoàng"," Minh Hoàng"," Khắc Hoàng"," Nguyên Hoàng"," Vũ Hoàng"," Huy Hoàng"," Anh Hoàng"," Lương Hoàng","Quốc Huy"," Đức Huy"," Khắc Huy"," Nguyên Huy"," Minh Huy"," Quang Huy"," Chấn Huy"," Tiến Huy"," Ngọc Huy"," Anh Huy"," Thái Huy"," Đức Huy"," Nhật Huy"," Hoàng Huy","Anh Hùng"," Đức Hùng"," Huy Hùng"," Đạt Hùng"," Quốc Hùng"," Kiều Hùng"," Nguyên Hùng"," Viết Hùng"," Hữu Hùng"," Huy Hùng"," Đinh Hùng"," Công Hùng"," Mạnh Hùng"," Tiến Hùng"," Tuấn Hùng"," Xuân Hùng"," Trọng Hùng","Hoàng Khải"," Nguyên Khải"," Đạt Khải"," An Khải"," Minh Khải"," Vỹ Khải"," Đình Khải"," Quang Khải"," Chí Khải"," Quốc Khải"," Đăng Khải"," Duy Khải"," Trung Khải","Gia Khang"," Minh Khang"," Đức Khang"," Thành Khanh"," Vĩnh Khang"," Duy Khang"," Nguyên Khang"," Mạnh Khang"," Nam Khang"," Phúc Khang"," Ngọc Khang"," Tuấn Khang","Quốc Khánh"," Huy Khánh"," Gia Khánh"," Quang Khánh"," Đông Khánh"," Đồng Khánh"," Duy Khánh"," Vĩnh Khánh"," Minh Khánh"," Hoàng Khánh"," Hữu Khánh"," Thiên Khánh","Anh Khoa"," Đăng Khoa"," Duy Khoa"," Vĩnh Khoa"," Bá Khoa"," Minh Khoa"," Hữu Khoa"," Nhật Khoa"," Xuân Khoa"," Tuấn Khoa"," Nguyên Khoa"," Mạnh Khoa","Minh Khôi"," Đăng Khôi"," Nhất Khôi"," Duy Khôi"," Trọng Khôi"," Nguyên Khôi"," Anh Khôi"," Mạnh Khôi"," Bảo Khôi"," Ngọc Khôi"," Tuấn Khôi"," Quang Khôi","Trung Kiên"," Vĩnh Kiên"," Anh Kiên"," Đức Kiên"," Bảo Kiên"," Thái Kiên"," Trọng Kiên"," Quốc Kiên"," Chí Kiên"," Vĩnh Kiên"," Huy Kiên"," Mạnh Kiên"," Gia Kiên"," Xuân Kiên","Tùng Lâm"," Bách Lâm"," Linh Lâm"," Hùng Lâm"," Điền Lâm"," Sơn Lâm"," Quốc Lâm"," Kiệt Lâm"," Tường Lâm"," Đình Lâm"," Tuấn Lâm"," Quang Lâm"," Minh Lâm"," Hữu Lâm","Bá Long"," Bảo Long"," Ðức Long"," Hải Long"," Hoàng Long"," Hữu Long"," Kim Long"," Phi Long"," Tân Long"," Thăng Long"," Thanh Long"," Thành Long"," Thụy Long"," Trường Long"," Tuấn Long"," Việt Long","Bá Lộc"," Ðình Lộc"," Nam Lộc"," Nguyên Lộc"," Phước Lộc"," Quang Lộc"," Xuân Lộc"," An Lộc"," Khánh Lộc"," Minh Lộc"," Bảo Lộc"," Hữu Lộc"," Vĩnh Lộc"," Tấn Lộc"," Phúc Lộc","Anh Minh"," Nhật Minh"," Quang Minh"," Duy Minh"," Tiến Minh"," Tuấn Minh"," Bình Minh"," Đức Minh"," Hiểu Minh"," Hữu Minh"," Thiện Minh"," Quốc Minh"," Thế Minh"," Nhật Minh"," Hoàng Minh"," Văn Minh"," Gia Minh"," Hải Minh","An Nam"," Chí Nam"," Ðình Nam"," Hải Nam"," Hoài Nam"," Hoàng Nam"," Hữu Nam"," Khánh Nam"," Nhật Nam"," Phương Nam"," Tiến Nam"," Trường Nam"," Xuân Nam"," Thành Nam"," Ngọc Nam"," Sơn Nam"," Duy Nam"," Việt Nam","Hiếu Nghĩa"," Hữu Nghĩa"," Minh Nghĩa"," Trọng Nghĩa"," Trung Nghĩa"," Phước Nghĩa"," Trí Nghĩa"," Tuấn Nghĩa"," Nhân Nghĩa"," Đức Nghĩa"," Hoài Nghĩa"," Tấn Nghĩa","Thế Ngọc"," Gia Ngọc"," Bảo Ngọc"," Vĩnh Ngọc"," Tuấn Ngọc"," Đại Ngọc"," Minh Ngọc"," Xuân Ngọc"," Quang Ngọc"," Anh Ngọc"," Hoàng Ngọc","Bình Nguyên"," Ðình Nguyên"," Ðông Nguyên"," Hải Nguyên","Ðình Nhân"," Ðức Nhân"," Minh Nhân"," Thiện Nhân"," Phước Nhân"," Quang Nhân"," Thành Nhân"," Trọng Nhân"," Trung Nhân"," Trường Nhân"," Việt Nhân"," Duy Nhân"," Hoài Nhân"," Ngọc Nhân"," Hoàng Nhân"," Thế Nhân","Ðức Phi"," Khánh Phi"," Nam Phi"," Thanh Phi"," Việt Phi"," Hùng Phi"," Phương Phi"," Hoàng Phi"," Trương Phi"," Anh Phi"," Long Phi"," Quốc Phi"," Bằng Phi"," Gia Phi","Chấn Phong"," Chiêu Phong"," Ðông Phong"," Ðức Phong"," Gia Phong"," Hải Phong"," Hiếu Phong"," Hoài Phong"," Hùng Phong"," Huy Phong"," Khởi Phong"," Nguyên Phong"," Quốc Phong"," Thanh Phong"," Thuận Phong"," Uy Phong"," Việt Phong"," Khải Phong"," Hồng Phong","Đình Phúc"," Hồng Phúc"," Hoàng Phúc"," Sỹ Phúc"," Gia Phúc"," Lạc Phúc"," Thế Phúc"," Quang Phúc"," Thiên Phúc"," Hạnh Phúc"," Vĩnh Phúc"," Duy Phúc"," Thanh Phúc"," Hồng Phúc","Anh Quân"," Bình Quân"," Ðông Quân"," Hải Quân"," Hoàng Quân"," Long Quân"," Minh Quân"," Nhật Quân"," Quốc Quân"," Sơn Quân"," Đình Quân"," Nguyên Quân"," Bảo Quân"," Hồng Quân"," Vũ Quân"," Bá Quân"," Văn Quân"," Khánh Quân","Đăng Quang"," Ðức Quang"," Duy Quang"," Hồng Quang"," Huy Quang"," Minh Quang"," Ngọc Quang"," Nhật Quang"," Thanh Quang"," Tùng Quang"," Vinh Quang"," Xuân Quang"," Phú Quang"," Phương Quang"," Nam Quang","Anh Quốc"," Bảo Quốc"," Minh Quốc"," Nhật Quốc"," Việt Quốc"," Vinh Quốc"," Thanh Quốc"," Duy Quốc"," Hoàng Quốc"," Cường Quốc"," Vương Quốc"," Chánh Quốc"," Lương Quốc","Ðức Tâm"," Đắc Tâm"," Duy Tâm"," Hữu Tâm"," Khải Tâm"," Phúc Tâm"," Mạnh Tâm"," Thiện Tâm"," Nhật Tâm"," Minh Tâm"," Chánh Tâm"," Thành Tâm"," Khánh Tâm"," An Tâm"," Hoàng Tâm"," Chí Tâm"," Đình Tâm"," Vĩnh Tâm"," Huy Tâm","Anh Thái"," Bảo Thái"," Hòa Thái"," Hoàng Thái"," Minh Thái"," Quang Thái"," Quốc Thái"," Phước Thái"," Triệu Thái"," Việt Thái"," Xuân Thái"," Vĩnh Thái"," Thông Thái"," Ngọc Thái"," Hùng Thái","Bá Thành"," Chí Thành"," Công Thành"," Ðắc Thành"," Danh Thành"," Ðức Thành"," Duy Thành"," Huy Thành"," Lập Thành"," Quốc Thành"," Tân Thành"," Tấn Thành"," Thuận Thành"," Triều Thành"," Trung Thành"," Trường Thành"," Tuấn Thành","Duy Thiên"," Quốc Thiên"," Kỳ Thiên"," Vĩnh Thiên"," Hạo Thiên"," Đạt Thiên"," Phúc Thiên"," Hoàng Thiên"," Minh Thiên"," Thanh Thiên"," Anh Thiên"," Khánh Thiên"," Đức Thiên","Bá Thịnh"," Cường Thịnh"," Gia Thịnh"," Hồng Thịnh"," Hùng Thịnh"," Kim Thịnh"," Nhật Thịnh"," Phú Thịnh"," Hưng Thịnh"," Phúc Thịnh"," Quang Thịnh"," Quốc Thịnh"," Đức Thịnh"," Vĩnh Thịnh"," Thái Thịnh"," Thế Thịnh"," Xuân Thịnh"," Công Thịnh","Ðình Trung"," Ðức Trung"," Hoài Trung"," Hữu Trung"," Kiên Trung"," Minh Trung"," Quang Trung"," Quốc Trung"," Thành Trung"," Thanh Trung"," Thế Trung"," Tuấn Trung"," Xuân Trung"," Bình Trung"," Khắc Trung"," Hiếu Trung"," Hoàng Trung","Anh Tuấn"," Công Tuấn"," Ðình Tuấn"," Ðức Tuấn"," Huy Tuấn",
"Khắc Tuấn"," Khải Tuấn"," Mạnh Tuấn"," Minh Tuấn"," Ngọc Tuấn"," Quang Tuấn"," Quốc Tuấn"," Thanh Tuấn"," Xuân Tuấn"," Thanh Tuấn"," Thiện Tuấn"," Hữu Tuấn"," Anh Tùng"," Bá Tùng"," Sơn Tùng"," Thạch Tùng"," Thanh Tùng"," Hoàng Tùng"," Bách Tùng"," Thư Tùng"," Đức Tùng"," Minh Tùng"," Thế Tùng"," Quang Tùng"," Ngọc Tùng"," Duy Tùng"," Xuân Tùng"," Mạnh Tùng"," Hữu Tùng","Bảo Sơn"," Bằng Sơn"," Ngọc Sơn"," Nam Sơn"," Cao Sơn"," Trường Sơn"," Thanh Sơn"," Thành Sơn"," Lam Sơn"," Hồng Sơn"," Hoàng Sơn"," Hải Sơn"," Viết Sơn"," Thế Sơn"," Quang Sơn"," Xuân Sơn"," Danh Sơn"," Linh Sơn"," Vĩnh Sơn","Anh Việt"," Hoài Việt"," Hoàng Việt"," Uy Việt"," Khắc Việt"," Nam Việt"," Quốc Việt"," Trọng Việt"," Trung Việt"," Tuấn Việt"," Vương Việt"," Minh Việt"," Hồng Việt"," Thanh Việt"," Trí Việt"," Duy Việt","Công Vinh"," Gia Vinh"," Hồng Vinh"," Quang Vinh"," Quốc Vinh"," Thanh Vinh"," Thành Vinh"," Thế Vinh"," Trọng Vinh"," Trường Vinh"," Tường Vinh"," Tấn Vinh"," Ngọc Vinh"," Xuân Vinh"," Hiển Vinh"," Tuấn Vinh"," Nhật Vinh","Thế Uy"," Thiên Uy"," Cát Uy"," Gia Uy"," Vũ Uy"," Vĩnh Uy"," Sơn Uy"," Đạt Uy"," Quốc Uy"," Cẩm Uy"," Khải Uy"," Hải Uy"," Thanh Uy"," Cao Uy"," Đức Uy"," Hữu Uy"," Chí Uy",
"Khôi Nguyên"," Phúc Nguyên"," Phước Nguyên"," Thành Nguyên"," Trung Nguyên"," Tường Nguyên"," Gia Nguyên"," Đức Nguyên"," Hà Nguyên"," Hoàng Nguyên"," Bảo Nguyên"]

nu_name = ["Hoài An"," Thu An"," Thúy An"," Xuân An"," Vĩnh An"," Thụy An"," Khánh An"," Mỹ An"," Thiên An"," Như An"," Bình An"," Hà An"," Thùy An"," Kim An",
"Bảo Anh"," Diệu Anh"," Minh Anh"," Hà Anh"," Nhã Anh"," Phương Anh"," Thùy Anh"," Trang Anh"," Tú Anh"," Quỳnh Anh"," Lan Anh"," Ngọc Anh"," Kim Anh"," Mai Anh"," Hoàng Anh"," Huyền Anh"," Vân Anh"," Quế Anh",
"Thu Bích"," Ngọc Bích"," Hồng Bích"," Hoài Bích"," Lam Bích"," Dạ Bích"," Phương Bích"," Huyền Bích"," Xuân Bích"," Gia Bích"," Lệ Bích",
"Bình Châu"," Bảo Châu"," Gia Châu"," Hồng Châu"," Diễm Châu"," Kim Châu"," Minh Châu"," Thủy Châu","Trân Châu"," Mộc Châu"," Mỹ Châu"," Ngọc Châu"," Quỳnh Châu",
"An Chi"," Bích Chi"," Bảo Chi"," Diễm Chi"," Lan Chi"," Thùy Chi"," Ngọc Chi"," Mai  Chi"," Phương Chi"," Quế Chi"," Trúc Chi"," Xuyến Chi"," Yên Chi"," Thảo Chi"," Mai Chi",
"Quỳnh Diệp"," Hoài Diệp"," Phong Diệp"," Khánh Diệp"," Mộc Diệp"," Ngọc Diệp"," Cẩm Diệp"," Hồng Diệp"," Bạch Diệp"," Bích Diệp"," Mỹ Diệp"," Kiều Diệp",
"Quỳnh Điệp"," Phong Điệp"," Hoàng Điệp"," Hồng Điệp"," Mộng Điệp"," Hồng Điệp"," Bạch Điệp"," Phi Điệp"," Ngọc Điệp"," Tường Điệp"," Minh Điệp"," Phương Điệp"," Khánh Điệp"," Thanh Điệp"," Kim Điệp"," Bạch Điệp"," Huyền Điệp"," Hương Điệp",
"Thục Đoan"," Phương Đoan"," Khánh Đoan"," Nhã Đoan"," Ý Đoan"," Bảo Đoan"," Kim Đoan"," Thu Đoan"," Thúy Đoan"," Hoài Đoan"," Lệ Đoan",
"Hạnh Dung"," Kiều Dung"," Phương Dung"," Từ Dung"," Hà Dung"," Nghi Dung"," Thùy Dung"," Thu Dung"," Mỹ Dung"," Kim Dung"," Ngọc Dung"," Bảo Dung"," Hoàng Dung",
"Trường Giang"," Thùy Giang"," Phương Giang"," Hà Giang"," Thúy Giang"," Như Giang"," Bích Giang"," Hoài Giang"," Lam Giang"," Hương Giang"," Khánh Giang",
"Hải Hà"," Phương Hà"," Ngân Hà"," Thu Hà"," Thanh Hà"," Lam Hà"," Vịnh Hà"," Như Hà"," Lan Hà"," Trang Hà"," Ngọc Hà"," Vân Hà"," Việt Hà"," Hoàng Hà"," Bảo Hà"," Thúy Hà",
"Thu Hạ"," Diệp Hạ"," Điệp Hạ"," Khúc Hạ"," Vĩ Hạ"," Lan Hạ"," Liên Hạ"," Cát Hạ"," Nhật Hạ"," Mai Hạ"," An Hạ"," Ngọc Hạ"," Hoàng Hạ"," Cẩm Hạ",
"Ngọc Hân"," Mai Hân"," Di Hân"," Gia Hân"," Bảo Hân"," Tuyết Hân"," Thục Hân"," Minh Hân"," Mỹ Hân"," Cẩm Hân"," Thu Hân"," Quỳnh Hân"," Khả Hân"," Tường Hân",
"Hồng Hạnh"," Thu Hạnh"," Hải Hạnh"," Lam Hạnh"," Ngọc Hạnh"," Diệu Hạnh"," Dung Hạnh"," Diễm Hạnh"," Nguyên Hạnh"," Bích Hạnh"," Thúy Hạnh"," Mỹ Hạnh",
"Hồng Hoa"," Kim Hoa"," Ngọc Hoa"," Phương Hoa"," Hạnh Hoa"," Như Hoa"," Quỳnh Hoa"," Liên Hoa"," Thanh Hoa"," Cúc Hoa"," Xuân Hoa"," Mỹ Hoa",
"Thiên Hương"," Quỳnh Hương"," Thu Hương"," Xuân Hương"," Tuyết Hương"," Việt Hương"," Thanh Hương"," Thùy Hương"," Mai Hương"," Minh Hương"," Kim Hương"," Ngọc Hương",
"Ngân Khánh"," Vân Khánh"," Như Khánh"," Đan Khánh"," Kim Khánh"," Mỹ Khánh"," Gia Khánh"," Ngọc Khánh"," Hiểu Khánh"," Bảo Khánh"," Lê Khánh"," Mai Khánh",
"Vân Khuê"," Thục Khuê"," Song Khuê"," Anh Khuê"," Sao Khuê"," Mai Khuê"," Yên Khuê"," Hồng Khuê"," Phương Khuê"," Hà Khuê"," Thiên Khuê"," Sao Khuê"," Ngọc Khuê",
"Vy Lan"," Xuân Lan"," Ý Lan"," Tuyết Lan"," Trúc Lan"," Thanh Lan"," Nhật Lan"," Ngọc Lan"," Mai Lan"," Phương Lan"," Quỳnh Lan"," Bích Lan"," Hà Lan",
"Phong Linh"," Phương Linh"," Hạ Linh"," Khánh Linh"," Khả Linh"," Đan Linh"," Nhật Linh"," Ái Linh"," Mỹ Linh"," Diệu Linh"," Gia Linh"," Mai Linh"," Thùy Linh"," Kim Linh",
"Thúy Loan"," Thanh Loan"," Kim Loan"," Ngọc Loan"," Hồng Loan"," Mỹ Loan"," Cẩm Loan"," Tố Loan"," Phương Loan"," Quỳnh Loan"," Tuyết Loan",
"Bạch Mai"," Ban Mai"," Chi Mai"," Hồng Mai"," Ngọc Mai"," Nhật Mai"," Thanh Mai"," Quỳnh Mai"," Yên Mai"," Trúc Mai"," Xuân Mai"," Khánh Mai"," Phương Mai"," Tuyết Mai",
"Họa Mi"," Giáng Mi"," Khánh Mi"," Yến Mi"," Tú Mi"," Bảo Mi"," Hòa Mi"," Vân Mi"," Ái My"," Tiểu My"," Trà My"," Hà My"," Uyển My"," Giáng My"," Hạ My"," Khánh My"," Yên My"," Diễm My"," Thảo My",
"Thu Minh"," Thủy Minh"," Thúy Minh"," Uyên Minh"," Uyển Minh"," Thảo Minh"," Ngọc Minh"," Nguyệt Minh"," Tuệ Minh"," Thùy Minh"," Uyên Minh"," Ánh Minh"," Khả Minh",
"Bích Nga"," Diệu Nga"," Hạnh Nga"," Hồng Nga"," Kiều Nga"," Lệ Nga"," Mỹ Nga"," Nguyệt Nga"," Quỳnh Nga"," Thanh Nga"," Thiên Nga"," Thu Nga","Thúy Nga","Tố Nga","Tuyết Nga"," Việt Nga",
"Kim Ngân"," Thu Ngân"," Bích Ngân"," Hồng Ngân"," Khánh Ngân"," Quỳnh Ngân"," Thúy Ngân"," Khả Ngân"," Thanh Ngân"," Kiều Ngân"," Tường Ngân"," Hoàng Ngân",
"Thục Nghi"," Uyển Nghi"," Ðông Nghi"," Phương Nghi"," Thảo Nghi"," Xuân Nghi"," Ngọc Nghi"," Ái Nghi"," Lan Nghi"," Hải Nghi"," Mộng Nghi"," Huệ Nghi"," Bảo Nghi"," Lệ Nghi",
"Ánh Ngọc"," Bảo Ngọc"," Bích Ngọc"," Diệu Ngọc"," Giáng  Ngọc"," Hồng Ngọc"," Khánh Ngọc"," Kim Ngọc"," Lam Ngọc"," Lan Ngọc"," Minh Ngọc"," Mỹ Ngọc"," Như Ngọc"," Thanh Ngọc"," Thu Ngọc"," Vân Ngọc"," Xuân Ngọc",
"Ái Nhi"," Cẩm Nhi"," Ðông Nhi"," Gia Nhi"," Hải Nhi"," Hảo Nhi"," Hiền Nhi"," Hương Nhi"," Huyền Nhi"," Lâm Nhi"," Lan Nhi"," Linh Nhi"," Mai Nhi"," Mỹ Nhi"," Ngọc Nhi"," Phương Nhi"," Quỳnh Nhi"," Tâm Nhi"," Thảo Nhi"," Thục Nhi"," Thùy Nhi"," Tịnh Nhi"," Tố Nhi",
"An Nhiên"," Yên Nhiên"," Bảo Nhiên"," Hạ Nhiên"," Thi Nhiên"," Lê Nhiên"," Ý Nhiên"," Hạo Nhiên"," Mỹ Nhiên"," Lạc Nhiên"," Thảo Nhiên"," Ngọc Nhiên"," Thùy Nhiên"," Quỳnh Nhiên",
"Bích Như"," Hồng Như"," Quỳnh Như"," Tâm Như"," Thùy Như"," Uyển Như"," Tố Như"," Ái Như"," Bình Như"," Ý Như"," Hạnh Như"," Huỳnh Như"," Thanh Như",
"Cẩm Nhung"," Hồng Nhung"," Phi Nhung"," Phương Nhung"," Quỳnh Nhung"," Thanh Nhung"," Tuyết Nhung"," Kiều Nhung"," Bích Nhung"," Ngọc Nhung"," Thụy Nhung"," Kim Nhung",
"Hoàng Oanh"," Hồng Oanh"," Kim Oanh"," Ngọc Oanh"," Song Oanh"," Thu Oanh"," Thùy Oanh"," Trâm Oanh"," Tuyết Oanh"," Yến Oanh"," Kiều Oanh"," Mỹ Oanh",
"Bảo Quyên"," Bích Quyên"," Diễm Quyên"," Khánh Quyên"," Lệ Quyên"," Mai Quyên"," Ngọc Quyên"," Phương Quyên"," Thảo Quyên"," Thục Quyên"," Tố Quyên"," Tú Quyên"," Mỹ Quyên",
"Bảo Quỳnh"," Diễm Quỳnh"," Gia Quỳnh"," Khánh Quỳnh"," Lê Quỳnh"," Mộng Quỳnh"," Ngọc Quỳnh"," Như Quỳnh"," Phương Quỳnh"," Thúy Quỳnh"," Trúc Quỳnh"," Tú Quỳnh"," Trúc Quỳnh"," Hồng Quỳnh",
"Băng Tâm"," Minh Tâm"," Mỹ Tâm"," Ngọc Tâm"," Như Tâm"," Phương Tâm"," Thanh Tâm"," Thục Tâm"," Mai Tâm"," Hồng Tâm"," Kiều Tâm"," Khánh Tâm"," Đan Tâm"," Ánh Tâm",
"Anh Thảo"," Bích Thảo"," Diễm Thảo"," Dạ Thảo"," Hương Thảo"," Kim Thảo"," Minh Thảo"," Hoàng Thảo"," Nguyên Thảo"," Như Thảo"," Phương Thảo"," Thạch Thảo"," Thanh Thảo"," Thiên Thảo"," Thu Thảo"," Xuân Thảo",
"Ái Thi (Thy)"," Dạ Thi (Thy)"," Mộng Thi (Thy)"," Ngọc Thi (Thy)"," Phương Thi (Thy)"," Khánh Thi (Thy)"," Uyên Thi (Thy)"," Bảo Thi (Thy)"," Minh Thi (Thy)"," Anh Thi (Thy)"," Hà Thi (Thy)"," Hoàng Thi (Thy)"," Huỳnh Thi (Thy)",
"Ánh Thu"," Bích Thu"," Hồng Thu"," Hoài Thu"," Hương Thu"," Kiều Thu"," Kim Thu"," Lệ Thu"," Minh Thu"," Mộng Thu"," Quế Thu"," Thanh Thu"," Xuân Thu"," Hoàng Thu",
"Anh Thư"," Diễm Thư"," Hồng Thư"," Huyền Thư"," Kim Thư"," Minh Thư"," Thanh Thư"," Thiên Thư"," Quỳnh Thư"," Ngọc Thư"," Bảo Thư"," Phương Thư"," Bội Thư",
"Kim Thủy"," Lệ Thủy"," Minh Thủy"," Phương Thủy"," Thanh Thủy"," Thu Thủy"," Xuân Thủy"," Mai Thủy",
"Ánh Trang"," Ðài Trang"," Diễm Trang"," Ðoan Trang"," Hạnh Trang"," Hoài Trang"," Hương Trang"," Huyền Trang"," Khánh Trang"," Kiều Trang","  Linh Trang"," Minh Trang"," Mỹ Trang"," Nhã Trang"," Phương Trang"," Quỳnh Trang"," Thanh Trang"," Thảo Trang"," Thiên Trang"," Thu Trang"," Thục Trang"," Thùy Trang"," Vân Trang"," Xuân Trang"," Yến Trang"," Bảo Trang",
"Ngọc Sương"," Nhã Sương"," Thu Sương"," Tú Sương"," Diệp Sương"," Tuyết Sương"," Thảo Sương"," Diễm Sương"," Hồng Sương"," Hoàng Sương"," Mai Sương"," Bích Sương"," Ánh Sương"," Minh Sương"," Lệ Sương",
"Diễm Uyên"," Duy Uyên"," Giáng Uyên"," Hạ Uyên"," Mỹ Uyên"," Ngọc Uyên"," Nhã Uyên"," Phương Uyên"," Phượng Uyên"," Thanh Uyên"," Thảo Uyên","Thục Uyên"," Thùy Uyên"," Thụy Uyên"," Tố Uyên"," Tú Uyên"," Cẩm Uyên",
"Ái Vân"," Bạch Vân"," Bảo Vân"," Bích Vân"," Cẩm Vân"," Diệu Vân"," Hải Vân"," Hồng Vân"," Khánh Vân"," Mộng Vân"," Mỹ Vân"," Ngọc Vân"," Quỳnh Vân"," Thái Vân"," Thanh Vân"," Thảo Vân"," Thu Vân"," Thụy Vân"," Thúy Vân"," Thùy Vân"," Thy Vân"," Trúc Vân"," Tường Vân"," Tuyết Vân"," Xuân Vân",
"Bảo Vy"," Diệp Vy"," Ðông Vy"," Hạ Vy"," Hải Vy"," Khánh Vy"," Lan Vy"," Mai Vy"," Minh Vy"," Mộng Vy"," Ngọc Vy"," Phượng Vy"," Thanh Vy"," Thảo Vy"," Thúy Vy"," Trúc Vy"," Tường Vy"," Tuyết Vy",
"Ánh Xuân"," Dạ Xuân"," Hồng Xuân"," Hương Xuân"," Kim Xuân"," Minh Xuân"," Mỹ Xuân"," Nghi Xuân"," Thanh Xuân"," Thi Xuân"," Tuyết Xuân"," Vĩnh Xuân"," Chiều Xuân"," Hà Xuân"," Cẩm Xuân",
"Thái Yên"," An Yên"," Xuân Yên"," Di Yên"," Hà Yên"," Hải Yên"," Thảo Yên"," Kim Yên"," Thanh Yên"," Ngọc Yên"," Mỹ Yên",
"Bạch Yến"," Cẩm Yến"," Dạ Yến"," Hải Yến"," Hoàng Yến"," Kim Yến"," Minh Yến"," Mỹ Yến"," Ngọc Yến"," Nhã Yến"," Phụng Yến"," Phi Yến"," Thi Yến"," Xuân Yến"]
10.times do |n|
  email = "example-#{n+1}@railstutorial.org"
  password = "123456"
  n = n.to_s
  while n.length < 8
    n = "0" + n
  end
  people_id = n
  student_id = n
  phone = "1234567890"
  home_town = Faker::Lorem.sentence(5)
  hight_school = Faker::Lorem.sentence(5)
  birthday = Time.now
  group_exam = rand(3) + 1
  graduate_score = rand(10)
  year = 2015
  gender = ["boy", "women"]
  dender_user = gender[rand(2)]
  if dender_user == "boy"
    name = ho[rand(16)] + nam_name[rand(758)]
  else
    name = ho[rand(16)] + nu_name[rand(704)]
  end
  Examinee.create!(
  name: name,
  email: email,
  password: password,
  password_confirmation: password,
  people_id: people_id,
  student_id: student_id,
  phone: phone,
  home_town: home_town,
  hight_school: hight_school,
  birthday: birthday,
  graduated: true,
  group_graduated_exam_id: group_exam,
  graduate_score: graduate_score,
  year: year
    )
end


res = Examinee.order(:created_at)
res.each { |resu|
math = rand(10)
literature = rand(10)
english = rand(10)
physical = rand(10)
chemistry = rand(10)
biological = rand(10)
history = rand(10)
geography = rand(10)
resu.create_result!(
  math: math,
  literature: literature,
  english: english,
  physical: physical,
  chemistry: chemistry,
  biological: biological,
  history: history,
  geography: geography
    )
}

2.times do |n|
  name = Faker::Name.name
  code = Faker::Code.ean(base = 9)
  email = "uni-#{n+1}@gmail.com"
  password = "123456"
  University.create!(name: name,
  code: code,
  password: password,
  email: email,
  password_confirmation: password,)
end

GroupExam.create!(
  exam1: "math",
  exam2: "literature",
  exam3: "english"
  )
GroupExam.create!(
  exam1: "math",
  exam2: "physical",
  exam3: "chemistry"
  )

major = University.order(:created_at)
2.times do
major.each{ |major|
  name = Faker::Name.name
  year = 2015
  benchmark1 = rand(10)+17
  benchmark2 = rand(10)+10
  benchmark3 = rand(15)
  last_year_benchmark = rand(10)+10
  deadline1 = DateTime.new(2015, 8, 1, 12, 00)
  deadline2 = DateTime.new(2015, 8, 15, 12, 00)
  if benchmark3 > 0
    deadline3 = DateTime.new(2015, 8, 25, 12, 00)
  else deadline3 = nil
  end
  major.majors.create!(
    name: name,
    year: year,
    benchmark1: benchmark1,
    benchmark2: benchmark2,
    benchmark3: benchmark3,
    deadline1: deadline1,
    deadline2: deadline2,
    deadline3: deadline3,
    last_year_benchmark: last_year_benchmark
    )
}
end


register = Examinee.order(:created_at)
register.each {|registe|
status = true
year = 2015
major_id = rand(Major.count-1)+1

registe.registers.create!(
  major_id: major_id,
  status: status,
  year: year
)}

exam = ["Math", "Literature", "English", "Physical", "Chemistry",
  "Biological", "History", "Geography"]

exam.each{ |exam|
  Exam.create! name: exam
}

GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 4
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 5
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 6
GroupGraduatedExam.create! exam_id_1: 1, exam_id_2: 2, exam_id_3: 3, exam_id_4: 7
