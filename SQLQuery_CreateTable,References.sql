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
values ('61TH2',N'Công Nghệ Thông Tin TH1');
select * from LOP
delete from LOP
insert into LOP(malop,tenlop)
values ('61TH1',N'Công Nghệ Thông Tin TH1');

update LOP
set tenlop=N'Công Nghệ Thông Tin TH1'
where malop='61TH1'

--6. Insert data vào Sinh Viên
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

--Insert Mon
insert into Mon(mamon,tenmon,sotc)
values ('cse100',N'Tin học căn bản',2);
select * from Mon

insert into Mon(mamon,tenmon,sotc)
values ('cse480',N'Cơ Sở Dữ Liệu',2);
select * from Mon

--Insert Ket Qua
insert into Ketqua(masv,mamon,diem)
values ('001','cse100','9')
insert into Ketqua(masv,mamon,diem)
values ('002','cse100','10')
insert into Ketqua(masv,mamon,diem)
values ('003','cse100','8')
insert into Ketqua(masv,mamon,diem)
values ('004','cse100','9.5')

select * from Ketqua

--7. đổi kiểu dữ liệu
ALTER TABLE mon
alter COLUMN tenmon nchar(100)
--Phép chiếu
--Liệt kê danh sách sinh viên của các lớp
--Thông tin sinh viên gồm masv,tensv,tenlop
select masv,tensv,malop from Sinhvien 

--Phép chọn
--Cho biết sinh viên thuộc lớp 61TH2
select *
from Sinhvien 
where malop='61TH2'

--Kết hợp phép chiếu và chọn
--Cho biết sinh viên có gt nam=1 và thuộc 61TH2
--Thông tin hiển thị gồm masv, tensv, tenlop
select masv, tensv, malop
from Sinhvien
where malop='61TH2'

--Phép giao
--Cho biết những sv nào có thi môn csdl
select masv from Sinhvien
intersect
select masv from Ketqua
where mamon='cse480'

--Phép trừ
--Cho biết những sv nào chưa thi môn csdl
select masv from Sinhvien
except
select masv from Ketqua
where mamon='cse480'

--Phép kết nối bằng
--Cho biết ds sinh viên của các lớp
--masv, tensv, gt,ns,tenlop
select masv,tensv,gt,ns,tenlop
from Sinhvien,LOP
where Sinhvien.malop=LOP.malop

--Phép kết nối bằng có thể viết thành kết nối nội như sau
select masv,tensv,gt,ns,tenlop
from Sinhvien sv inner join LOP l on sv.malop=l.malop
