--drop database QLTVien
create database QLTVien
go
use QLTVien
go

-----
--drop table DOCGIA
create table DOCGIA
(
	MaDocGia nchar(10),
	TenDangNhap nchar(30),
	HoTen nchar(30),
	GioiTinh nchar(5),
	NamSinh datetime,
	DiaChi nchar(100),
	PRIMARY KEY (MaDocGia),
)
--drop table SACH
create table SACH
(
	MaSach nchar(10),
	TenSach nchar(50),
	TacGia nchar(30),
	TheLoai nchar(30),
	NhaXuatBan nchar(50),
	GiaSach int,
	SoLuong int,
	TinhTrang nchar(10),
	PRIMARY KEY (MaSach),
)
--drop table PHIEUMUON
create table PHIEUMUON
(
	MaPhieu nchar(10),
	MaDocGia nchar(10),
	MaSach nchar(10),
	NgayMuon datetime,
	NgayPhaiTra datetime,
	PRIMARY KEY (MaPhieu),
)
--drop table PHIEUTRA
create table PHIEUTRA
(
	MaPhieu nchar(10),
	MaDocGia nchar(10),
	MaSach nchar(10),
	NgayTra datetime,
	PRIMARY KEY (MaPhieu),
)

create table ACCOUNT
(
	MaDocGia nchar(10) PRIMARY KEY,
	TenDangNhap nchar(30),
	MatKhau nchar(30),
	Quyen int,
)


alter table PHIEUMUON add
	constraint FK_PHIEUMUON_DOCGIA foreign key (MaDocGia) references DOCGIA (MaDocGia),
	constraint FK_PHIEUMUON_SACH foreign key (MaSach) references SACH (MaSach)

alter table PHIEUTRA add
	constraint FK_PHIEUTRA_DOCGIA foreign key (MaDocGia) references DOCGIA (MaDocGia),
	constraint FK_PHIEUTRA_SACH foreign key (MaSach) references SACH (MaSach)

ALTER TABLE dbo.DOCGIA ADD
	CONSTRAINT FK_DOCGIA_ACCOUNT FOREIGN KEY (MaDocGia) REFERENCES dbo.ACCOUNT(MaDocGia)



insert into ACCOUNT values ('15','nguyenphananhthien', '123', 1)
insert into ACCOUNT values ('1','phamquocthai', '123', 1)
insert into ACCOUNT values ('2','nguyenthanhvy', '123', 1)
insert into ACCOUNT values ('3','daoxuanthang', '123', 1)
insert into ACCOUNT values ('4','nguyenngocthien', '123', 1)
insert into ACCOUNT values ('5','ngominhdat', '123', 1)
insert into ACCOUNT values ('6','nguyenbuiduyphong', '123', 1)
insert into ACCOUNT values ('7','nguyenthihoa', '123', 1)
insert into ACCOUNT values ('8','tranvanthien', '123', 1)
insert into ACCOUNT values ('999','admin', '123', 0)
----
insert into DOCGIA values ('1','phamquocthai',N'Phạm Quốc Thái','Nam','11/8/2001',N'Tiền Giang')
insert into DOCGIA values ('2','nguyenthanhvy',N'Nguyễn Thanh Vy','Nam','1/16/2001',N'Đồng Tháp')
insert into DOCGIA values ('3','daoxuanthang',N'Đào Xuân Thắng','Nam','10/8/2001',N'Tp.HCM')
insert into DOCGIA values ('4','nguyenngocthien',N'Nguyễn Ngọc Thiện','Nam','1/17/2001',N'Bình Thuận')
insert into DOCGIA values ('5','ngominhdat',N'Ngô Minh Đạt','Nam','8/18/2001',N'Tiền Giang')
insert into DOCGIA values ('6','nguyenbuduyphong',N'Nguyễn Bùi Duy Phong','Nam','02/09/2001',N'Quãng Ngãi')
insert into DOCGIA values ('7','nguyenthihoa',N'Nguyễn Thị Hoa',N'Nữ','8/18/2001',N'Tp.HCM')
insert into DOCGIA values ('8','tranvanthien',N'Trần Văn Thiên',N'Nam','11/7/2001',N'Quãng Ngãi')
insert into DOCGIA values ('15','nguyenphananhthien',N'Nguyễn Phan Anh Thiện','Nam','10/02/2001',N'Bình Dương')


----
insert into SACH values ('1', N'Kỹ nghệ Phần mềm (bản dịch tiếng Việt – 2 tập)', N'Roger S. Pressman', N'Lập trình', N'Nhà xuất bản Giáo dục', 15000, 10, N'Còn')
insert into SACH values ('2', N'Giáo trình nhập môn công nghệ phần mềm', N'Nguyễn Tiến Huy', N'Lập trình', N'Đại học Khoa học Tự nhiên Tp. Hồ Chí Minh', 36000, 16, N'Còn')
insert into SACH values ('3', N'Software Engineering', N'Nguyễn Xuân Huy', N'Lập trình', N'Institue of Information Technology', 30000, 15, N'Còn')
insert into SACH values ('4', N'Software Engineering', N'Ian Sommerville', N'Lập trình', N'Addison-Wesley', 160000, 0, N'Hết')
insert into SACH values ('5', N'Giáo trình Công nghệ Phần mềm', N'Nguyễn Minh Đạo', N'Lập trình', N'Trường ĐHSPKT', 50000, 20, N'Còn')
insert into SACH values ('6', N'Giáo trình phân tích & thiết kế hướng đối tượng', N'Dương Anh Đức', N'Lập trình', N'Nhà xuất bản Thống kê', 57000, 9, N'Còn')
insert into SACH values ('7', N'Quá trình phát triển phần mềm thống nhất', N'Nguyễn Tuấn Huy biên dịch', N'Lập trình', N'Nhà xuất bản Thống kê', 49000, 20, N'Còn')
insert into SACH values ('8', N'Windows Form programming in C Sharp', N'Chris sells', N'Lập trình', N'Nhà xuất bản Thống kê', 70000, 30, N'Còn')
insert into SACH values ('9', N'Nhập môn UML', N'Huỳnh Văn Đức', N'Lập trình', N'NXB Lao động xã hội', 48000, 20, N'Còn')
insert into SACH values ('10', N'The Design Patterns Java Companion', N'Horstmann, Cay', N'Lập trình', N'Addison-Wesley', 90000, 40, N'Còn')
insert into SACH values ('11', N'Object-Oriented Design & Patterns', N'James W. Cooper', N'Lập trình', N'John Wiley & Sons', 43000, 10, N'Còn')
insert into SACH values ('12', N'Giáo trình Hệ điều hành', N'Khoa CNTT', N'Lập trình', N'Đại học sư phạm kỹ thuật thành phố Hồ Chí Minh', 40000, 50, N'Còn')
insert into SACH values ('13', N'Operating System Concepts Sixth Edition', N'Abraham Silberschatz', N'Lập trình', N'John Wiley & Sons', 43000, 10, N'Còn')
insert into SACH values ('14', N'Giáo trình HĐH nâng cao', N'Trần Hạnh Nhi', N'Lập trình', N'Đại học Khoa học tự nhiên thành phố Hồ Chí Minh', 43000, 10, N'Còn')
insert into SACH values ('15', N'Interrupt List Release 61', N'Ralf Brown', N'Lập trình', N'John Wiley & Sons', 43000, 10, N'Còn')
---
insert into PHIEUMUON values ('1','1','1','5/1/2022', '8/15/2022')
insert into PHIEUMUON values ('2','7','7','5/2/2022', '8/16/2022')
insert into PHIEUMUON values ('3','2','3','5/3/2022', '8/17/2022')
insert into PHIEUMUON values ('4','4','2','5/3/2022', '8/17/2022')
insert into PHIEUMUON values ('5','6','2','5/3/2022', '8/17/2022')
insert into PHIEUMUON values ('6','7','8','5/3/2022', '8/17/2022')
insert into PHIEUMUON values ('7','7','4','5/3/2022', '8/17/2022')
insert into PHIEUMUON values ('8','2','2','5/3/2022', '8/17/2022')
insert into PHIEUMUON values ('9','15','2','5/3/2022', '8/17/2022')
insert into PHIEUMUON values ('10','15','10','5/3/2022', '8/17/2022')

---
insert into PHIEUTRA values ('1','1','4','6/10/2022')
insert into PHIEUTRA values ('2','7','6','6/5/2022')
insert into PHIEUTRA values ('3','5','2','6/13/2022')
insert into PHIEUTRA values ('4','8','6','6/11/2022')
insert into PHIEUTRA values ('5','3','3','6/11/2022')
insert into PHIEUTRA values ('6','2','7','6/13/2022')
insert into PHIEUTRA values ('7','1','9','6/14/2022')
insert into PHIEUTRA values ('8','7','6','6/11/2022')
insert into PHIEUTRA values ('9','2','4','6/11/2022')
insert into PHIEUTRA values ('10','7','2','6/10/2022')
insert into PHIEUTRA values ('11','6','7','6/11/2022')
insert into PHIEUTRA values ('12','3','1','6/13/2022')
insert into PHIEUTRA values ('13','2','2','6/11/2022')

---


select DOCGIA.HoTen from ACCOUNT, DOCGIA where ACCOUNT.MaDocGia = DOCGIA.MaDocGia