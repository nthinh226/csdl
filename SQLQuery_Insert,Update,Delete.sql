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

--
