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
VALUES  (N'HP Pavilion x360 ba063TU (2GV25PA)' ,620 ,700,N'HP Pavilion x360 ba063TU i3 sở hữu cấu hình tầm trung, đáp ứng tốt các nhu cầu cơ bản với màn hình cảm ứng và xoay lật.' ,'2018-5-25' , N'00001.jpg' , 100 ,1 ,1,4  )---------
INSERT dbo.Laptop
VALUES  (N'Laptop Acer Aspire ES1 432 N3350' ,350 ,499,N'Acer Aspire ES1 432 C3C9 N3350 là sản phẩm phổ thông với giá thành thấp, dễ tiếp cận đến người dùng. Máy có hiệu năng sử dụng đơn giản phù hợp để học tập, làm việc hay giải trí.' ,'2018-12-1' , N'00002.jpg' , 150 ,2 ,1,2  )
INSERT dbo.Laptop-----------------
VALUES  (N'Laptop Asus X441NA N4200/4GB/500GB/Win10/(GA070T)' ,365 ,520,N'Asus X441NA N4200 là sự lựa chọn giá tốt phù hợp với học sinh - sinh viên hoặc người dùng làm việc văn phòng, giải trí nhẹ.' ,'2017-2-25' , N'00003.jpg' , 50 ,2 ,1,1  )
INSERT dbo.Laptop
VALUES  (N'Laptop Acer ES1 533 P6L2 N4200/4GB/500GB/Win10/(NX.GFTSV.008)' ,365 ,520,N'Acer ES1 533 P6L2 N4200 thuộc phân khúc học tập - văn phòng với giá tốt, được trang bị cấu hình vửa đủ sử dụng tính năng cơ bản và cài sẵn hệ điều hành windows 10 bản quyền giúp sử dụng ổn định, tiện lợi hơn.' ,'2016-1-1' , N'00004.jpg' , 19 ,1 ,1 ,2 )
INSERT dbo.Laptop
VALUES  (N'Laptop HP 15 bs641TU N3710/4GB/500GB/Win10/(3MT73PA)' ,400 ,499,N'Máy được trang bị màn hình 15.6 inch cùng với cấu hình vừa phải đủ sức đáp ứng các nhu cầu cơ bản từ lướt web, xem phim, làm việc, học tập một cách mượt mà.' ,'2018-5-25' , N'00005.jpg' , 80 ,6 ,1,4  )
INSERT dbo.Laptop
VALUES  (N'Laptop Lenovo Ideapad 320 14ISK i3 6006/4GB/500GB/Win10/(80XG0083VN)' ,459 ,559,N'Máy có giá thành dễ tiếp cận với nhiều khách hàng, đặc biệt phù hợp với học sinh - sinh viên và người dùng văn phòng - công sở.' ,'2017-12-25' , N'00006.jpg' , 180 ,8 ,1,5  )
INSERT dbo.Laptop
VALUES  (N'Laptop Asus X441UA i3 6100U/4GB/1TB/Win10/(WX027T)' ,499 ,605,N'Máy được trang bị cấu hình phù hợp với học sinh, sinh viên hay nhân viên văn phòng có nhu cầu giải trí đơn thuần. ' ,'2018-12-1' , N'00007.jpg' , 150 ,9 ,1,1  )
INSERT dbo.Laptop
VALUES  (N'Laptop Acer Aspire A315 51 31X0 i3 6006U/4GB/500GB/Win10/(NX.GNPSV.016)' ,555 ,700,N'Acer Aspire A315 51 31X0 là phiên bản sử dụng core i3 thế hệ thứ 6 phù hợp nhu cầu học tập của học sinh, sinh viên, màn hình hiển thị sắc nét với công nghệ Full HD.' ,'2018-2-14' , N'00008.jpg' , 46 ,10 ,1,2  )
INSERT dbo.Laptop
VALUES  (N'Laptop Dell Vostro 3568 i3 6006U/4GB/1TB/Win10/(VTI3027W)' ,550 ,620,N'Dell Vostro 3568 i3 6006U là sản phẩm có cấu hình tốt trong tầm giá, được trang bị chip Intel Core i3 cho hiệu năng ổn định, ổ cứng HDD lưu trữ lên đến 1 TB.' ,'2018-10-1' , N'00009.jpg' , 66 ,1 ,1,3  )
INSERT dbo.Laptop--------------
VALUES  (N'Laptop Dell Inspiron 3567 i5 7200U/4GB/500GB/2GB M430/Win10/(70119158)' ,500 ,599,N'Máy trang bị với RAM 4 GB cùng card rời AMD 2 GB thể hiện được sức mạnh cấu hình của sản phẩm.' ,'2018-4-23' , N'00009.jpg' , 85 ,6 ,1,3  )
-------------------------------------------------------------------------------------------------------------------