--1. Tạo database
create database QLSV_TH2

--2. Tạo table (quan hệ)
use QLSV_TH2
create table LOP
(
	malop nchar(10) not null primary key,
	tenlop nchar(100),
);

--2. Tạo table SinhVien
create table Sinhvien
(
	masv nchar(10) not null primary key,
	tensv nchar(100),
	gt bit,
	ns date,
	malop nchar(10),
	foreign key (malop) references LOP(malop)
);

--3. Tạo table Mon
create table Mon
(
	mamon char(10) not null primary key,
	tenmon char(100),
	sotc int,
);

create table Ketqua
(
	masv nchar(10) not null,
	mamon char(10) not null,
	diem float,
	primary key (masv,mamon),
	foreign key (mamon) references Mon(mamon),
	foreign key (masv) references SinhVien(masv)
);

--4. Check ràng buộc sao cho điểm của môn học từ >=0 và <=10
alter table Ketqua
add constraint rangbuocdiem check (diem>=0 and diem<=10);

--5. Insert data vào lớp
insert into LOP(malop,tenlop)
values ('61TH2','LOP CNTT 61TH2');
select * from LOP

insert into LOP(malop,tenlop)
values ('61TH1','LOP CNTT 61TH1');
select * from LOP

--6. Insert date vào Sinh Viên
delete from Sinhvien
insert into Sinhvien(masv,tensv,gt,ns,malop)
values ('001',N'Thịnh','1','2001-02-26','61TH2');
select * from Sinhvien

insert into Sinhvien(masv,tensv,gt,ns,malop)
values ('002',N'Mi','0','2001-09-29','61TH2');
select * from Sinhvien

insert into Sinhvien(masv,tensv,gt,ns,malop)
values ('003',N'Phương','1','2001-2-4','61TH2');
select * from Sinhvien

insert into Sinhvien(masv,tensv,gt,ns,malop)
values ('004',N'Thảo','0','2001-2-5','61TH2');
select * from Sinhvien

insert into Mon(mamon,tenmon,sotc)
values ('cse100',N'Tin học căn bản',2);
select * from Mon

insert into Mon(mamon,tenmon,sotc)
values ('cse480',N'Cơ Sở Dữ Liệu',2);
select * from Mon

--7. đổi kiểu dữ liệu
ALTER TABLE mon
alter COLUMN tenmon nchar(100)


