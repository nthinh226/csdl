--1. Tạo 1 bảng mới

--2. Cho biết danh sách các đội của tổ chức 'tlus'
select MADOI from DOI where MATOCHUC='tlus'
union
select madoi from DOIDUBI where MATOCHUC='tlus'

--3. Cho biết ds các đội mà có tham gia giải đấu
select MADOI from DOI
intersect
select madoi from THAMGIAGIAIDAU 
--4. Cho biết ds các đội chưa tham gia giải đấu bao giờ
select MADOI from DOI
except
select madoi from THAMGIAGIAIDAU

