--1. Thêm 1 đội mới có nội dung như sau vào table DOI.
insert DOI(MADOI,TENDOI,NAMTHANHLAP,MATOCHUC)
values ('game','Game ALL','2021','TLUS')

-- Xem lại nội dung
select * from DOI

--2. Xóa 1 đội có mã số là game
delete from DOI
where MADOI='game'

-- Xem lại nội dung
select * from DOI

--3. Cập nhập lại thông tin của tên đội có mã số trhoc thành Olympic ALL
update DOI
set TENDOI='Olympic ALL'
where MADOI='trhoc'

--BÀI TẬP
--1. Thêm thông tin  vào đơn vị tài trợ gồm các thông tin sau:
--DMCT,Điện Máy Chợ Lớn, Trần Hưng Đạo Q1. TPHCM,028
insert DONVITAITRO(MADV,TENDV,DCDV,SDTDV)
values ('DMCL','Dien May Cho Lon','Tran Hung Dao, Q1, TP.HCM','028')
select * from DONVITAITRO

--2. Cập nhập đơn vị tài trợ có mã số DMCL với thông tin SDT: 0934191028
update DONVITAITRO
set SDTDV='0934191028'
where MADV='DMCL'
select * from DONVITAITRO

--3. Xóa 1 đơn vị tài trợ có mã số 
delete from DONVITAITRO
where MADV='DMCL'
select * from DONVITAITRO

--4. Xóa tất cả các đơn vị tài trợ
delete from DONVITAITRO
select * from DONVITAITRO
