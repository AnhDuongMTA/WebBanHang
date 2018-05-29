CREATE DATABASE WebBanHangLapTop
GO
USE WebBanHangLapTop
GO
CREATE TABLE KhachHang
(
	MaKH INT IDENTITY PRIMARY KEY,
	HoTen NVARCHAR(50),
	NgaySinh DATETIME,
	GioiTinh NVARCHAR(3),
	DienThoai VARCHAR(50),
	TaiKhoan VARCHAR(50),
	MatKhau NVARCHAR(50),
	Email VARCHAR(50),
	DiaChi NVARCHAR(200)
)
GO 
CREATE TABLE NhaCungCap
(
	MaNCC INT IDENTITY PRIMARY KEY,
	TenNCC NVARCHAR(100),
	DiaChi NVARCHAR(100),
	DienThoai INT 
)
GO
CREATE TABLE LoaiLaptop
(
	MaLoai INT IDENTITY PRIMARY KEY,
	TenLoai NVARCHAR(50),
)
GO 
CREATE TABLE Laptop
(
	MaLaptop INT IDENTITY PRIMARY KEY,
	TenLaptop NVARCHAR(100),
	GiaBan FLOAT ,
	GiaGoc FLOAT,
	MoTa NVARCHAR(MAX),
	NgayCapNhat  DATETIME,
	AnhBia NVARCHAR(MAX),
	SoLuongTon INT,
	MaNCC INT REFERENCES dbo.NhaCungCap(MaNCC) ,
	Moi INT,
	MaLoai INT REFERENCES dbo.LoaiLaptop(MaLoai)
	
)
GO
ALTER TABLE dbo.Laptop ADD ChiTietLaptop NVARCHAR(MAX)

CREATE TABLE DonHang
(
	MaDonHang INT IDENTITY PRIMARY KEY,
	NgayGiao DATETIME,
	NgayDat	DATETIME,
	DaThanhToan NVARCHAR(50),
	TinhTrangGiaoHang INT,
	MaKH INT REFERENCES dbo.KhachHang(MaKH)
)
GO 
CREATE TABLE ChiTietDonHang
(
	MaDonHang INT REFERENCES dbo.DonHang(MaDonHang),
	MaLaptop INT REFERENCES dbo.Laptop(MaLaptop),
	SoLuong	INT,
	DonGia	INT,
	PRIMARY KEY(MaDonHang,MaLaptop)
)
GO

-------------------------------------------------------------------------------------------------------------------
INSERT dbo.KhachHang
VALUES  ( N'Nguyễn Trường Giang' ,'1990-2-24' , N'Nam' ,'0165232565' ,'TruongGiang' , N'123' ,'truonggiang@gmail.com' ,N'Miền Tây')
INSERT dbo.KhachHang
VALUES  ( N'Võ Vũ Trường Giang' ,'1983-01-12' , N'Nam' ,'09823125214' ,'GiangTruong' , N'456' ,'giangtruongvo@gmail.com' ,N'Hồ Chí Minh')
INSERT dbo.KhachHang
VALUES  ( N'Hồ Trấn Thành' ,'1981-01-23' , N'Nam' ,'01652325654' ,'TranThanh' , N'456' ,'tranthanh@gmail.com' ,N'Quận 7')
INSERT dbo.KhachHang
VALUES  ( N'Hariwon' ,'1986-04-23' , N'Nữ' ,'0163235687' ,'Hariwon' , N'123' ,'hariwon@gmail.com' ,N'Hàn Quốc')
INSERT dbo.KhachHang
VALUES  ( N'Nguyễn Việt Hương' ,'1979-06-15' , N'Nữ' ,'0152356854' ,'VietHuong' , N'345' ,'viethuong@gmail.com' ,N'Hà Nam')
INSERT dbo.KhachHang
VALUES  ( N'Võ Hoài Linh' ,'1970-08-22' , N'Nam' ,'0169854585' ,'HoaiLinh' , N'456' ,'hoailinh@gmail.com' ,N'Hà Nội')
INSERT dbo.KhachHang
VALUES  ( N'Nguyễn Xuân Bắc' ,'1989-06-11' , N'Nam' ,'0168535658' ,'XuanBac' , N'456' ,'xuanbac@gmail.com' ,N'Hà Nội')
INSERT dbo.KhachHang
VALUES  ( N'Võ Tự Long' ,'1985-02-23' , N'Nam' ,'016952645' ,'tulong' , N'456' ,'tulong@gmail.com' ,N'Cầu Giấy')
INSERT dbo.KhachHang
VALUES  ( N'Hồ Việt Hương' ,'1983-01-21' , N'Nữ' ,'01689535214' ,'HoHuong' , N'456' ,'hoviethuong@gmail.com' ,N'Từ Liêm')
INSERT dbo.KhachHang
VALUES  ( N'Nguyễn Ngọc Trinh' ,'1989-01-12' , N'Nữ' ,'0985652534' ,'NgocTrinh' , N'123' ,'ngoctrinh@gmail.com' ,N'Hà Đông')
INSERT dbo.KhachHang
VALUES  ( N'Đinh Tiến Dũng' ,'1985-12-12' , N'Nam' ,'016852547' ,'TienDung' , N'456' ,'tiendung@gmail.com' ,N'Vĩnh Phúc')
INSERT dbo.KhachHang
VALUES  ( N'Nguyễn Thị Vân Dung' ,'1980-10-22' , N'Nữ' ,'0169652348' ,'VanDung' , N'456' ,'vandung@gmail.com' ,N'Hồ Chí Minh')
-------------------------------------------------------------------------------------------------------------------
GO
INSERT dbo.NhaCungCap
VALUES  ( N'Công ty TNHH Trường Phát',N'Cầu Giấy',0165232548)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Vi Tính Nguyên Kim Chính Nhân',N'Nguyễn Cư Trinh',01685326447)
INSERT dbo.NhaCungCap
VALUES  ( N'Cửa Hàng Laptop98.Com',N'Quận Tân Bình - Tp.HCM',01685325544)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Phúc Tường',N'Chánh Nghĩa - Bình Dương',0985652565)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Xuất Nhập Khẩu Phạm Hưng',N'Hồ Tây - Hà Nội',0168532659)
INSERT dbo.NhaCungCap
VALUES  ( N'Cửa Hàng Lâm Anh',N'Văn Quán - Hà Nội',0986535264)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Phát Triển Công Nghệ Minh Châu',N'Thanh Xuân - Hà Nội',0984545251)----------------
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Tin Học Tiên Phong',N'Phan Thiết - Bình Thuận',0168525421)------------
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Đầu Tư Và Phát Triển Thương Mại Globe',N'Lê Trọng Tấn - Thanh Xuân',0982312424)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Điện Tử - Tin Học Từ Sơn',N'Phan Rang - Ninh Thuận',01672358957)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Vi Tính Tiến Phát',N'Phú Hóa - Bình Dương',01672351421)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH MTV Tin Học Hải Nguyên',N'Hòa Thành - Tây Ninh',0168225477)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty TNHH Thương Mại Dịch Vụ Vi Tính Cơ Đạt',N'Phú Hòa - TP.HCM',01698542544)
INSERT dbo.NhaCungCap
VALUES  ( N'Công Ty Cổ Phần USCOM Thương Mại',N'Tây Hồ - Hà Nội',0166325214)--------------
-------------------------------------------------------------------------------------------------------------------
GO 
INSERT dbo.LoaiLaptop VALUES  ( N'Asus')
INSERT dbo.LoaiLaptop VALUES  ( N'Acer')
INSERT dbo.LoaiLaptop VALUES  ( N'Dell')
INSERT dbo.LoaiLaptop VALUES  ( N'HP')
INSERT dbo.LoaiLaptop VALUES  ( N'Lenovo')
INSERT dbo.LoaiLaptop VALUES  ( N'MSI')
INSERT dbo.LoaiLaptop VALUES  ( N'Macbook')
GO 

-------------------------------------------------------------------------------------------------------------------	
INSERT dbo.Laptop
VALUES  (N'HP Pavilion x360 ba063TU (2GV25PA)' ,620 ,700,
N'HP Pavilion x360 ba063TU i3 sở hữu cấu hình tầm trung,
 đáp ứng tốt các nhu cầu cơ bản với màn hình cảm ứng và xoay lật.'
  ,'2018-5-25' , N'00001.jpg' , 100 ,1 ,1,4, N'Cấu hình khá
Máy sử dụng core i3 thế hệ thứ 7 Kaby Lake giúp mang lại hiệu năng hoạt động ổn định và nhanh hơn so với nhiều dòng core i3 cùng mức giá hiện nay.
RAM dạng mới DDR4 dung lượng 4 GB giúp giảm 20% điện năng tiêu thụ pin và nâng cao hiệu suất hoạt động.
Màn hình hiển thị tốt
Máy được trang bị màn hình cảm ứng, cùng tính năng lật, xoay 360 độ giúp bạn thuận tiện sử dụng .
Biến hình máy với 4 kiểu để khác nhau tùy theo nhu cầu sử dụng
Bạn có thể gập máy kiểu lều hay đứng để sử dụng khi muốn xem phim hay trình chiếu.
Các cổng kết nối
Máy trang bị cổng HDMI để trình chiếu lên màn hình lớn như tivi, và cũng tích hợp nhiều chuẩn kết nối khác thuận tiện hơn cho người dùng.' )---------
INSERT dbo.Laptop
VALUES  (N'Laptop Acer Aspire ES1 432 N3350' ,350 ,499,
N'Acer Aspire ES1 432 C3C9 N3350 là sản phẩm phổ thông với giá thành thấp, dễ tiếp cận đến người dùng.
 Máy có hiệu năng sử dụng đơn giản phù hợp để học tập, làm việc hay giải trí.' ,'2018-12-1' , N'00002.jpg' , 150 ,2 ,1,2,
  N'Cấu hình đủ chuẩn
Máy chỉ sử dụng chip xử lý Intel Celeron và RAM DDR3L 2 GB để đảm bảo giá thành tốt nhưng vẫn đảm bảo được các nhu cầu sử dụng căn bản. 
Kết hợp ổ cứng HDD 500 GB cũng giúp bạn thoải mái lưu trữ dữ liệu.
Thiết kế phổ thông, đơn giản
Acer Aspire ES1 432 C3C9 N3350 mang đến một hình dáng giản dị và hài hòa về các đường nét, góc cạnh. Máy có thiết kế chất liệu vỏ bằng nhựa và trọng lượng 1.92 kg nên cũng không quá khó khăn khi mang theo.
Màn hình 14 inch
Màn hình của Acer Aspire ES1 432 C3C9 khá gọn gàng, kết hợp cùng với công nghệ ACER CineCrystal LED Backlit và độ phân giải HD (1366 x 768) cho độ sáng và màu sắc khá đẹp.
Bàn phím bấm chất lượng tốt
Phím bấm chữ số to, rõ ràng và có độ nảy khi bấm tốt, êm tay.
Các cổng kết nối
Máy trang bị cổng HDMI để trình chiếu lên màn hình lớn như tivi, máy chiếu dễ dàng. Ngoài ra, nổi bật nhất của sản phẩm này là có cổng USB 3.0 cho kết nối nhanh hơn USB 2.0, thoải mái trong việc sao chép dữ liệu.' )
INSERT dbo.Laptop 
VALUES  (N'Laptop Asus X441NA N4200/4GB/500GB/Win10/(GA070T)' ,365 ,520,N'Asus X441NA N4200 là sự lựa chọn giá tốt phù hợp với học sinh - sinh viên
 hoặc người dùng làm việc văn phòng, giải trí nhẹ.' ,'2017-2-25' , N'00003.jpg' , 50 ,2 ,1,1 ,
 N'Cấu hình Intel Pentium - Giá mềm
Máy tích hợp Intel Pentium N4200 với tốc độ 1.10 GHz hoạt động ổn với các phần mềm nhẹ cơ bản. RAM 4 GB DDR3L cùng với ổ cứng lưu trữ HDD 500 GB giúp bạn lưu trữ được khá nhiều dữ liệu để học tập, làm việc.
Màn hình 14 inch với độ phân giải HD
Màn hình tương đối nhỏ gọn và với độ phân giải HD cho màn hình 14 inch thì hình ảnh hiển thị khá sắc nét.
Dàn âm thanh với công nghệ xử lý độc quyền SonicMaster
Công nghệ độc quyền SonicMaster kết hợp cùng dàn loa ấn tượng ở mặt trước bàn phím giúp âm thanh phát trực diện hơn, âm bass trầm sâu hay từng chi tiết nhỏ trong nhạc bạn cũng đều cảm nhận được.
Các cổng kết nối
Máy trang bị cổng HDMI để trình chiếu lên màn hình lớn như tivi.
Ngoài ra, còn kết nối dễ dàng với máy in có dây và kể cả đa số các máy in không dây, máy scan... Nổi bật nhất là cổng USB Type-C cho phép truyền tải dữ liệu nhanh hơn cả USB 3.0.' )
INSERT dbo.Laptop
VALUES  (N'Laptop Acer ES1 533 P6L2 N4200/4GB/500GB/Win10/(NX.GFTSV.008)' ,365 ,520,N'Acer ES1 533 P6L2 N4200 thuộc phân khúc 
học tập - văn phòng với giá tốt, được trang bị cấu hình vửa đủ sử dụng tính năng cơ bản và cài 
sẵn hệ điều hành windows 10 bản quyền giúp sử dụng ổn định, tiện lợi hơn.' ,'2016-1-1' , N'00004.jpg' , 19 ,1 ,1 ,2,
N'Thiết kế máy đơn giản phổ thông
Acer ES1 533 P6L2 N4200 có thiết kế chất liệu vỏ nhựa và có trọng lượng kha khá 2.4 kg cùng độ dày 24.6 mm. Vì nằm trong phân khúc phổ thông nên có thiết kế bình thường chứ không có gì đột phá của một sản phẩm laptop.
Cấu hình phù hợp với thao tác sử dụng nhẹ nhàng
Cấu hình Acer ES1 533 P6L2 N4200 phù hợp với các thao tác về học tập, giải trí nhẹ, công việc văn phòng cơ bản. Máy được trang bị CPU Intel Pentium 1.10 GHz, RAM DDR3L 4 GB và ổ cứng lưu dữ liệu HDD 500 GB.
Màn hình lớn 15.6 inch
Laptop Acer ES1 533 P6L2 N4200 sở hữu màn hình 15.6 inch, độ phân giải HD (1366 x 768) kết hợp công nghệ LED Backlit cho góc nhìn to, rõ nét.  
Bàn phím Acer ES1 533 P6L2 N4200 như thế nào?
Phím bấm nhạy, to rõ thích hợp với người dùng hay làm việc thường xuyên về phần mềm nhập liệu như: Công việc hành chính (nhập văn bản), giáo viên...
Cổng kết nối, trình chiếu
Acer ES1 533 P6L2 N4200 trang bị đầy đủ cổng kết nối như USB 3.0 giúp truyền tải sao chép dữ liệu nhanh hay cổng HDMI giúp xuất hình ảnh laptop ra máy chiếu, tivi tiện lợi trong những cuộc họp, thuyết trình.' )
INSERT dbo.Laptop
VALUES  (N'Laptop HP 15 bs641TU N3710/4GB/500GB/Win10/(3MT73PA)' ,400 ,499,N'Máy được trang bị màn hình 15.6 inch
 cùng với cấu hình vừa phải đủ sức đáp ứng các nhu cầu cơ bản từ lướt web, xem phim, làm việc, học tập một cách mượt mà.' ,'2018-5-25' , N'00005.jpg' , 80 ,6 ,1,4 ,
 N'Thiết kế
Là một chiếc laptop thuộc phân khúc bình dân nhưng HP 15 bs641TU lại mang trong mình một thiết kế khá cao cấp với màu vàng đồng sang trọng, phần kê tay khi gõ phím cũng được làm vân cách điệu, tăng thêm phần cao cấp cho sản phẩm. Việc sử dụng vỏ nhựa trong thiết kế cũng là một điểm cộng mang lại sự cứng cáp, chắc chắn cho khung máy, ngoài ra còn làm giảm trọng lượng của máy xuống còn 1.86 kg, khá nhẹ với một chiếc máy tính xách tay 15.6 inch.
Màn hình lớn
Điểm nổi bật nhất trên máy chính là màn hình lên đến 15.6 inch độ phân giải HD đáp ứng tốt những nhu cầu về giải trí, xem phim, học tập, làm việc trên máy. 15 bs641TU có thể đáp ứng hầu hết các nhu cầu cơ bản của người dùng phổ thông nhưng lại cần một chiếc laptop có màn hình to để giải quyết công việc cũng như giải trí tốt hơn, không gặp tình trạng chữ hay hình ảnh hiển thị quá nhỏ, gây hại mắt.
Cấu hình
Sử dụng vi xử lý N3710 cùng với 4 GB RAM giúp máy thực hiện tốt và trơn tru các tác vụ cơ bản như lướt web, xem video, chỉnh sửa ảnh cơ bản, nghe nhạc. Tuy rằng vi xử lý có tốc độ thấp như N3710 không phù hợp để chơi game nhưng nó lại có khả năng tiết kiệm điện khá tốt và giúp máy có một mức giá hợp lý hơn. Nếu chỉ sử dụng những nhu cầu phổ thông, bạn hãy yên tâm là N3710 vẫn có thể đáp ứng tốt, ngoài ra máy có thể chơi được một số các game nhẹ nhàng khá tốt.
Âm thanh và cổng kết nối
Loa kép stereo được tích hợp ngay phía dưới máy cho âm thanh khá tốt, phù hợp cho xem phim nghe nhạc và các nhu cầu về âm thanh cơ bản. Chất lượng âm thanh của máy không hề thua kém so với những máy trong phân khúc cao cấp hơn. HP 15 bs641TU là một trong số ít những chiếc máy vẫn còn giữ được những cổng kết nối cơ bản hiện giờ với 1 cổng LAN cắm dây mạng, 1 cổng HDMI truyền hình ảnh lên máy chiếu, tivi, 3 cổng USB, 1 cổng gắn thẻ nhớ SD, 1 cổng cắm tai nghe. Ngoài ra, máy còn được trang bị ổ đĩa quang tiện lợi hơn khi cần xem phim, hoặc cài đặt phần mềm từ đĩa quang.
Bàn phím
Bàn phím của những chiếc laptop HP luôn có độ nảy tốt, khoảng cách phím hợp lý giúp người dùng văn phòng hay người thường xuyên sử dụng bàn phím cho tốc độ gõ phím nhanh, không bị mỏi tay khi sử dụng trong thời gian dài. Bàn phím số bên phải phù hợp với kế toán hoặc người có nhu cầu thao tác nhiều với những con số.
' )
INSERT dbo.Laptop
VALUES  (N'Laptop Lenovo Ideapad 320 14ISK i3 6006/4GB/500GB/Win10/(80XG0083VN)' ,459 ,559,N'Máy có giá thành dễ tiếp cận với 
nhiều khách hàng, đặc biệt phù hợp với học sinh - sinh viên và người dùng văn phòng - công sở.' ,'2017-12-25' , N'00006.jpg' , 180 ,8 ,1,5 ,
N'Thiết kế đơn giản
Lenovo Ideapad 320 14ISK (80XG0083VN) có màu đen cùng thiết kế đơn giản hài hòa nhưng không kém phần mạnh mẽ. Máy được làm bằng vỏ nhựa có kết cấu pin dính liền vào thân máy và có độ dày 22.7 mm nhưng cũng khá nhẹ với 2.1 kg, với trọng lượng này thì khả năng mang máy đi nhiều nơi để sử dụng là không quá khó khăn.
Cấu hình tối ưu về hiệu quả và giá thành
Máy được trang bị chip Intel Core i3 Skylake với tốc độ 2.0 GHz và cùng với RAM DDR4 4 GB giúp xử lý nhiều thao tác như mở web nghe nhạc, xem tin tức, làm việc file văn phòng khá mượt mà. Ổ cứng kèm theo máy là HDD 500 GB thì khá thoải mái để lưu trữ dữ liệu.
Đi kèm với chip Intel Skylake thế hệ 6 thì GPU sẽ là Intel HD Graphics 520 quen thuộc, mặc dù đây không phải là loại card tích hợp mới nhất, khủng nhất nhưng đủ để giúp máy xử lý các vấn đề về đồ họa căn bản.
Màn hình sắc nét
Laptop Lenovo 320 14ISK sở hữu màn hình 14 inch nhỏ gọn và có độ phân giải vừa đủ HD giúp hiển thị hình ảnh rõ ràng khi xem film, xem ảnh hoặc làm việc.
Bàn phím chất lượng hoàn hảo
Bàn phím được trang bị các phím bấm rộng rãi và có độ nảy tốt giúp bạn thoải mái đánh chữ mà không bị gò bó. 
Âm thanh sống động
Lenovo Ideapad 320 14ISK i3 6006U được trang bị loa kép nên cho âm thanh to rõ và dễ nghe hơn.' )
INSERT dbo.Laptop
VALUES  (N'Laptop Asus X441UA i3 6100U/4GB/1TB/Win10/(WX027T)' ,499 ,605,N'Máy được trang bị cấu hình phù hợp với học sinh, 
sinh viên hay nhân viên văn phòng có nhu cầu giải trí đơn thuần. ' ,'2018-12-1' , N'00007.jpg' , 150 ,9 ,1,1,
N'Thiết kế máy đơn giản phổ thông
Mẫu laptop trong bài viết này có thiết kế chất liệu vỏ nhựa và có trọng lượng nhẹ 1.75 kg cùng độ dày 27.6 mm.
Cấu hình phù hợp với thao tác sử dụng nhẹ nhàng
Laptop Asus Core i3 phiên bản trên được sử dụng chip thế hệ thứ 6, RAM DDR4 4 GB và ổ cứng lưu dữ liệu HDD 1 TB phù hợp với các thao tác về học tập, giải trí nhẹ, công việc cơ bản trong văn phòng, cơ quan.
Màn hình vừa đủ dùng
Asus X441UA i3 6100U sở hữu màn hình 14 inch gọn nhẹ, độ phân giải HD (1366 x 768) kết hợp công nghệ LED Backlit và ASUS Splendid Video nâng cao khả năng hiển thị hình ảnh.
Touchpad đa dạng cách sử dụng
Với chuột cảm ứng (Multi Touchpad) đời mới có diện tích lớn, nhạy và tích hợp nhiều thao tác cử chỉ bằng 2 hoặc 3 ngón tay giúp người dùng sử dụng nhanh chóng khi lướt web hay làm việc.
Đa dạng cổng kết nối
Máy được trang bị đầy đủ cổng kết nối USB 3.0 và USB Type-C giúp truyền tải sao chép dữ liệu nhanh hay cổng HDMI – VGA (D-Sub) giúp xuất hình ảnh laptop ra máy chiếu, tivi tiện lợi trong những cuộc họp, thuyết trình.
'  )
INSERT dbo.Laptop
VALUES  (N'Laptop Acer Aspire A315 51 31X0 i3 6006U/4GB/500GB/Win10/(NX.GNPSV.016)' ,555 ,700,N'Acer Aspire A315 51 31X0 là phiên
 bản sử dụng core i3 thế hệ thứ 6 phù hợp nhu cầu học tập của học sinh, sinh viên, màn hình hiển thị sắc nét với công nghệ Full 
 HD.' ,'2018-2-14' , N'00008.jpg' , 46 ,10 ,1,2,N'Phù hợp với các nhu cầu sử dụng làm việc cơ bản
Máy sử dụng chip xử lý core i3 thế hệ thứ 6 giúp máy đảm đương tốt các tác vụ hằng ngày của bạn như nhập liệu trên các phần mềm office, phù hợp với giới văn phòng, giáo viên hay học sinh...
Máy có RAM 4 GB và có thể nâng cấp lên tối đa 8 GB để máy hoạt động nhanh hơn.
Màn hình Full HD 
Điểm sáng của máy chính là màn hình lớn trang bị màn hình độ phân giải sắc nét Full HD không hề thua kém đối thủ giá cao.'  )
INSERT dbo.Laptop
VALUES  (N'Laptop Dell Vostro 3568 i3 6006U/4GB/1TB/Win10/(VTI3027W)' ,550 ,620,N'Dell Vostro 3568 i3 6006U là sản phẩm 
có cấu hình tốt trong tầm giá, được trang bị chip Intel Core i3 cho hiệu năng ổn định, ổ cứng HDD lưu trữ lên đến
 1 TB.' ,'2018-10-1' , N'00009.jpg' , 66 ,1 ,1,3,
 N'Đặc điểm nổi bật của Dell Vostro 3568 i3 6006U/4GB/1TB/Win10/(VTI3027W)

Bộ sản phẩm chuẩn: Pin, Dây nguồn, Sách hướng dẫn, Thùng máy, Adapter sạc

Dell Vostro 3568 i3 6006U là sản phẩm có cấu hình tốt trong tầm giá, được trang bị chip Intel Core i3 cho hiệu năng ổn định, ổ cứng HDD lưu trữ lên đến 1 TB.
Thiết kế truyền thống
Laptop Dell Vostro 3568 có độ mỏng chỉ 23.65 mm và nặng 2.18 kg nên rất dễ để mang máy đi sử dụng ở nhiều nơi, rất tiện lợi và hợp xu hướng ngày nay.
Hiệu suất ổn định
Máy đang trang bị chip Intel Core i3 thứ hệ thứ 6 cho hiệu năng mượt mà, tốc độ 2.0 GHz mang lại công suất hoạt động ổn định, xử lí nhanh với các tác vụ như: soạn thảo văn bản, lướt web hay check mail cho phản hồi nhanh chóng.
Laptop Dell Vostro 3568​ tích hợp sẵn thanh RAM 4 GB và có hỗ trợ người dùng nâng cấp lên 8 GB nâng cao hiệu quả làm việc, phù hợp với đối tượng người dùng văn phòng, doanh nghiệp.

Máy sử dụng ổ cứng HDD dung lượng lên tới 1 TB, hỗ trợ việc lưu trữ nhiều dữ liệu.
Màn hình 15.6 inch thoải mái làm việc
Dell Vostro này có màn hình lên tới 15.6 inch, độ phân giải HD (1366 x 768 pixels) cho chất lượng hiển thị tốt. Công nghệ màn hình TrueLife LED-Backlit Display giúp hình ảnh, màu sắc hiển thị chân thực sống động.
Cổng kết nối đa dạng
Dell Core i3 được thiết kế khá mỏng nhưng vẫn còn trang bị ổ đĩa DVD để bạn cài win hoặc học ngoại ngữ, và có tất cả các kết nối cơ bản như cổng USB 2.0 và cổng USB 3.0, kết nối không dây Bluetooth để bạn sử dụng các thiết bị không dây như chuột, tai nghe. Ngoài ra còn cổng VGA/ HDMI kết nối máy chiếu, tivi, jack tai nghe tích hợp mic.
'  )
INSERT dbo.Laptop 
VALUES  (N'Laptop Dell Inspiron 3567 i5 7200U/4GB/500GB/2GB M430/Win10/(70119158)' ,500 ,599,N'Máy trang bị với RAM 4 GB 
cùng card rời AMD 2 GB thể hiện được sức mạnh cấu hình của sản phẩm.' ,'2018-4-23' , N'00009.jpg' , 85 ,6 ,1,3,
N'Máy hoạt động ra sao?
Để kiểm tra độ hoạt động của những chiếc laptop thường người ta sẽ thử nghiệm với các game, vì game thường đòi hỏi tài nguyên hoạt động của máy tính khá cao. Vì vậy, với laptop Dell Core i5 thế hệ 7, xung nhịp 2.50 Ghz khá tốt cùng với ổ cứng lưu trữ HDD 500 GB sẽ giúp máy đáp ứng đầy đủ nhu cầu về xem phim, chơi game.
Ngoài ra, trải nghiệm thực tế với tựa game "Xuất Kích", một thể loại game bắn súng có đồ hoạ khá, khi chơi game ở chế độ cao nhất xuyên suốt 30 phút mà máy không xảy ra hiện trạng giật “lag” gì cả. Và khi trải nghiệm thực tế với 2 phần mềm Photoshop CS5 và Adobe Illustrator cho thấy khi thao tác thiết kế, xử lý khá mượt mà, 60 phút sử dụng liên tục cũng không thấy xuất hiện tình trạng "bị chậm".
Màn hình rộng trải nghiệm giải trí hoàn hảo
Mẫu laptop Dell này sở hữu màn hình 15.6 inch cùng với đó là độ phân giải HD (1366 x 768) đủ cho hình ảnh rõ nét, chi tiết.
Touchpad đa cách sử dụng
Touchpad thông minh giúp người sử dụng thao tác kéo thả, phóng to, thu nhỏ dễ dàng hơn rất nhiều.
Khả năng trình chiếu, kết nối
Máy có ổ đĩa quang giúp bạn xem phim hay học tiếng Anh với đĩa DVD dễ dàng hơn. Một điểm cộng tiếp theo máy vẫn trang bị cổng mạng LAN giúp bạn kết nối tiện lợi với internet khi Wi-Fi yếu.
Kèm theo cổng USB 2.0 là 2 x USB 3.0 giúp truyền tải dữ liệu nhanh hơn. Thêm nữa, cổng HDMI cho phép kết nối với tivi hoặc máy chiếu tiện lợi.

Thời gian dùng Li-Ion 4 cell
Không có thông số nào cụ thể thời gian sử dụng pin chính xác từ hãng cả. Tuy nhiên nhập vai của một người sử dụng bình thường với các nhu cầu hỗn hợp: Lướt web, Facebook, nghe nhạc, xem phim, chế độ chờ,... thì máy có thể hoạt động ổn khoảng 2 giờ 35 phút.
'  )
--------
INSERT dbo.Laptop 
VALUES  (N'Laptop Dell Inspiron 5379 i7 8550U/8GB/1TB/Win10/Office365/(C3TI7501W)' ,1200 ,1325,N'Dell Inspiron 5379 i7 8550U có thiết kế nhỏ gọn và sang trọng máy được trang bị cấu hình Intel Kabylake Refresh mạnh mẽ, máy có màn hình cảm ứng đa điểm tiện dụng.' ,'2018-4-23' , N'000010.jpg' , 100 ,5 ,2,3,
N'Thiết kế hiện đại, sang trọng
Laptop Dell Inspiron 5379 được tạo nên từ chất liệu nhựa với các cạnh thiết kế vuông vức và được phủ một lớp xám. Máy có độ mỏng 19.5 mm cho bạn khả năng mang vác máy đi làm hay đi công tác tiện lợi.
Tùy cơ ứng biến đa dụng
Điểm "tùy cơ ứng biến" ở đây là để nói đến sự tiện lợi mà khả năng gập xoay 360 độ của máy mang lại. Bạn có thể đặt máy ở hình dạng lều để xem phim, gập lại như một máy tính bảng để thao tác cho nhanh hoặc dạng laptop để trên bàn bình thường sử dụng cho tiện.
Cấu hình mới mạnh mẽ
Dell Inspiron này được trang bị sức mạnh Intel Core i7 Kabylake Refresh 1.8 GHz, RAM DDR4 8 GB giúp các phần mềm chạy đa nhiệm ổn định, mượt mà. Ổ cứng đi kèm là HDD 1 TB cho bạn thoải mái lưu trữ dữ liệu không lo hết bộ nhớ.
Nhưng điểm mạnh của cấu hình máy là tiết kiệm điện năng, mỏng nhẹ nghiêng về học tập, làm việc đồ họa cơ bản và xem phim nhiều hơn là dành cho người chuyên chơi game.

Màn hình Full HD cao cấp
Màn hình có kích thước nhỏ gọn 13.3 inch với độ phân giải Full HD (1920 x 1080), nhưng với sự hỗ trợ chip Intel thế hệ thứ 8 được tích hợp card đồ họa UHD Graphics 620 nên có thể xem được video độ phân giải 4K cực sắc nét.
Ngoài ra, đặc điểm nổi bật ở mục này là màn hình của máy có thể xoay gập 360 độ rất tiện lợi, bạn có thể gập lại và sử dụng cảm ứng như chiếc máy tính bảng.

Bàn phím rộng và có độ nảy tốt
Bàn phím có độ đàn hồi tốt giúp bấm phím thoải mái và còn có đèn để dễ dàng sử dụng trong điều kiện ánh sáng yếu hơn.
Cổng kết nối đa dạng
Laptop Dell Inspiron 5379 vẫn hỗ trợ đầy đủ cổng kết nối như 2 x USB 3.0 truy xuất dữ liệu tốc độ cao, 1 x USB 2.0, HDMI truyền ra màn hình lớn.
'  )
INSERT dbo.Laptop 
VALUES  (N'Laptop Dell Inspiron 7570 i5 8250U/4GB/1TB+128GB/4GB 940MX/Win10/Office365/(N5I5102OW)
' ,1150 ,1250,N'Không chỉ là một chiếc máy tính xách tay thông thường Dell Inspiron 7570 i5 8250U còn là dòng laptop thời trang cao cấp trong series 7000 của Dell với thiết kế sang trọng và hiệu năng vượt trội.
' ,'2018-5-26' , N'000011.jpg' , 62 ,4 ,2,3,
N'Cấu hình thách thức
Máy chạy với chip xử lý Intel Core i5 thế hệ thứ 8 mới nhất của Intel, kết hợp với dung lượng RAM 4 GB chuẩn DDR4 tốc độ bus 2400 Mhz, kèm theo ổ cứng lưu trữ HDD lên đến 1 TB là sự có mặt của SSD 128 GB cho tốc độ xử lý tăng lên đáng kể. Ngoài ra khe cắm SSD M2 mở rộng sẽ giúp bạn có được nhiều sự lựa chọn hơn trong việc nâng cấp máy.
Thiết kế tinh tế
 Điểm nổi bật là thiết kế nhôm nguyên khối sang trọng, Dell Inspiron 7570 i5 8250U mỏng 18.8 mm, và nhẹ 2 kg nên rất tiện lợi khi mang theo mọi nơi.
 Viền màn hình mỏng kích thước như máy 14"
Được trang bị một màn hình lớn 15.6" có độ phân giải Full HD, đột phá về viền màn hình mỏng tạo cảm giác như bạn đang dùng trên một máy chỉ 14" mà thôi.

Màn hình còn có công nghệ TrueLife LED-Backlit Display chống phản chiếu mới có độ tương phản màu sắc cao hơn. Ngoài ra với sự hỗ trợ của card đồ họa rời NVIDIA

GeForce 940MX 4 GB cung cấp hiệu suất và hiệu quả đáng kinh ngạc.
Âm thanh hoàn hảo
Dell Inspiron 7570 được trang bị công nghệ âm thanh Waves MaxxAudio đưa chất lượng âm thanh như phòng thu đến gần hơn với bạn.
Kết nối hiện đại
Thuộc dòng máy tính cao cấp vì vậy Dell Inspiron 7570 đã trang bị cho chiếc laptop này đầy đủ các cổng kết nối tiện dụng và hiện đại: Cổng USB 3.0, cổng USB Type-C, 1 cổng truy xuất hình ảnh âm thanh HDMI.
'  )
INSERT dbo.Laptop 
VALUES  (N'Laptop Dell Vostro 3578 i7 8550U/8GB/1TB/2GB 520/Win10/(NGMPF11)
' ,1199 ,1299,N'Với cấu hình mạnh mẽ máy có thể chạy tốt các ứng dụng phục vụ cho công việc, học tập, xử lý đồ hoạ cũng như chơi game ở mức cấu hình tầm trung khá mượt mà.
' ,'2018-5-27' , N'000012.jpg' , 80 ,3 ,2,3,
N'Thiết kế
Vẫn giữ nguyên thiết kế quen thuộc trên dòng máy Vostro chiếc laptop có phần thân máy khá chắc chắn với vỏ nhựa và màu đen mạnh mẽ. Phần tản nhiệt lớn cũng giúp cho máy hoạt động mát mẻ trong thời gian dài, không bị nóng quá nhiều khi chạy các ứng dụng nặng.
Hiệu năng
Điểm nâng cấp đáng kể nhất của Dell Vostro năm nay nằm ở phần cấu hình với Core i7 thế hệ thứ 8 cho hiệu năng khá vượt trội so với thế hệ cũ, nó còn tiết kiệm pin hơn mang lại thời gian sử dụng pin dài hơn. Dell còn trang bị cho Vostro đến 8 GB RAM cùng card đồ hoạ rời đảm bảo cho máy chạy tốt các ứng dụng phục vụ cho công việc cũng như giải trí một cách mượt mà, không có độ trễ.
Màn hình
Trang bị màn hình 15.6 inch độ phân giải Full HD giúp máy hiển thị rõ nét hơn. Màn hình còn được phủ một lớp chống chói giúp hiển thị tốt trong môi trường có nhiều ánh sáng mạnh như ngoài trời, phòng có nhiều đèn. Màn hình Full HD còn giúp bạn xem phim, hình ảnh sắc nét hơn.
Bàn phím
Bàn phím trên máy sử dụng bàn phím full size với các phím số bên phải tiện lợi hơn cho người dùng cần làm việc liên quan đến tính toán, hay những con số. Việc gõ phím cũng hoàn toàn thoải mái do các phím được bố trí khoảng cách vừa phải, không gây mỏi tay.
Các cổng kết nối và thời lượng pin
Thời lương pin trên máy vẫn đảm bảo được khoảng 3 đến 4 giờ hoạt động cho 1 lần sạc, tuỳ vào tác vụ nặng hay nhẹ khác nhau mà thời lượng pin có thể thay đổi ngắn hơn hoặc dài hơn. Các cổng kết nối trên máy vẫn được bố trí đầy đủ với cổng USB, VGA để xuất hình, cổng LAN kết nối dây mạng đảm bảo sự tiện lợi nhất cho người dùng.
'  )
INSERT dbo.Laptop 
VALUES  (N'Laptop Dell Inspiron 5570 i5 8250U/4GB/1TB/2GB M530/Win10/Office365/(M5I5238W)
' ,2500 ,2650,N'Dell Inspiron 5570 là một trong những dòng laptop đầu tiên của năm nay được Dell trang bị cấu hình mới với dòng chip Intel KabyLake Refresh vượt trội về mặt hiệu năng so với những thế hệ trước.
' ,'2018-5-22' , N'000013.jpg' , 120 ,4 ,2,3,
N'Thiết kế tinh tế, đẳng cấp
Tổng thể Dell Inspiron 5570 được hoàn thiện từ chất liệu vỏ nhựa nhưng nhìn khá giống với vỏ kim loại  sang trọng. Máy chỉ mỏng 22.7 mm và nặng 1.6 kg dễ dàng di chuyển mọi lúc mọi nơi.
Cấu hình vượt trội
Có ngoại hình mảnh mai nhưng bên trong laptop Dell là một cơ bắp khỏe mạnh. Máy được trang bị CPU Intel Core i5 thế hệ thứ 8 nhanh hơn khi sử dụng bộ xử lý thế hệ 7, cùng với 4 GB RAM DDR4, ổ cứng HDD 1 TB có khả năng nâng cấp ổ cứng SSD M.2.
Màn hình
Bạn sẽ được thưởng thức các chi tiết hiển thị sắc nét trên Dell Core i5 với màn hình 15,6 inch Full HD và tính năng chống chói để xem mọi thứ tốt hơn, đặc biệt là bên ngoài trời hoặc trong ánh sáng chói chang.
Chiếu sáng công việc của bạn
Dell Inspiron N5570 tích hợp bàn phím backlit tiêu chuẩn đi kèm, cho phép bạn gõ thuận tiện trong môi trường ánh sáng lờ mờ. Một bàn phím có sẵn rất dễ dàng để đính kèm hoặc loại bỏ cho phù hợp với sự thoải mái của bạn.
Cổng kết nối phong phú
Laptop này vẫn trang bị đầy đủ cổng kết nối như 2 x USB 3.0 truy xuất dữ liệu tốc độ cao, 1 x USB 2.0, HDMI truyền màn hình sắc nét.
'  )
INSERT dbo.Laptop 
VALUES  (N'Laptop Dell Inspiron 3567 i5 7200U/4GB/500GB/2GB M430/Win10/(70119158)
' ,1350 ,1500,N'Dell Inspiron 3567 i5 7200U là phiên bản máy tính xách tay phục vụ cho người dùng làm trong các ngành nghề thuộc phân khúc đồ họa  - kỹ thuật. Máy trang bị với RAM 4 GB cùng card rời AMD 2 GB thể hiện được sức mạnh cấu hình của sản phẩm.
' ,'2018-4-22' , N'000014.jpg' , 55 ,6 ,2,3,
N'Máy hoạt động ra sao?
Để kiểm tra độ hoạt động của những chiếc laptop thường người ta sẽ thử nghiệm với các game, vì game thường đòi hỏi tài nguyên hoạt động của máy tính khá cao. Vì vậy, với laptop Dell Core i5 thế hệ 7, xung nhịp 2.50 Ghz khá tốt cùng với ổ cứng lưu trữ HDD 500 GB sẽ giúp máy đáp ứng đầy đủ nhu cầu về xem phim, chơi game.
Ngoài ra, trải nghiệm thực tế với tựa game "Xuất Kích", một thể loại game bắn súng có đồ hoạ khá, khi chơi game ở chế độ cao nhất xuyên suốt 30 phút mà máy không xảy ra hiện trạng giật “lag” gì cả. Và khi trải nghiệm thực tế với 2 phần mềm Photoshop CS5 và Adobe Illustrator cho thấy khi thao tác thiết kế, xử lý khá mượt mà, 60 phút sử dụng liên tục cũng không thấy xuất hiện tình trạng "bị chậm".

Màn hình rộng trải nghiệm giải trí hoàn hảo
Mẫu laptop Dell này sở hữu màn hình 15.6 inch cùng với đó là độ phân giải HD (1366 x 768) đủ cho hình ảnh rõ nét, chi tiết.
Touchpad đa cách sử dụng
Touchpad thông minh giúp người sử dụng thao tác kéo thả, phóng to, thu nhỏ dễ dàng hơn rất nhiều.
Khả năng trình chiếu, kết nối
Máy có ổ đĩa quang giúp bạn xem phim hay học tiếng Anh với đĩa DVD dễ dàng hơn. Một điểm cộng tiếp theo máy vẫn trang bị cổng mạng LAN giúp bạn kết nối tiện lợi với internet khi Wi-Fi yếu.
Kèm theo cổng USB 2.0 là 2 x USB 3.0 giúp truyền tải dữ liệu nhanh hơn. Thêm nữa, cổng HDMI cho phép kết nối với tivi hoặc máy chiếu tiện lợi.

Thời gian dùng Li-Ion 4 cell
Không có thông số nào cụ thể thời gian sử dụng pin chính xác từ hãng cả. Tuy nhiên nhập vai của một người sử dụng bình thường với các nhu cầu hỗn hợp: Lướt web, Facebook, nghe nhạc, xem phim, chế độ chờ,... thì máy có thể hoạt động ổn khoảng 2 giờ 35 phút.
'  )
-------------------------------------------------------------------------------------------------------------------