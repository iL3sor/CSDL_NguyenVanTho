CREATE DATABASE QLBH
USE QLBH
/*Tao bang khach hang*/
CREATE TABLE KHACHHANG
(
	MAKH char(4) CONSTRAINT PK_KH PRIMARY KEY,
	HOTEN varchar(40),
	DCHI varchar(50),
	SODT VARCHAR(20),
	NGSINH SMALLdatetime,
	DOANHSO money,
	NGDK SMALLdatetime,
)

create table NHANVIEN
(
	MANV CHAR(4) CONSTRAINT PK_NV PRIMARY KEY,
	HOTEN VARCHAR(40),
	NGVL SMALLDATETIME,
	SO_DT VARCHAR(20)
)
create table SANPHAM
(
	MASP CHAR(4) CONSTRAINT PK_SP PRIMARY KEY,
	TENSP VARCHAR(40),
	DVT VARCHAR(20),
	NUOCSX VARCHAR(40),
	GIA MONEY
)
CREATE TABLE HOADON
(
	SOHD INT CONSTRAINT PK_HOADON  PRIMARY KEY,
	NGHD SMALLDATETIME,
	MAKH CHAR(4) CONSTRAINT FK_HD_KH FOREIGN KEY REFERENCES KHACHHANG(MAKH),
	MANV CHAR(4)CONSTRAINT FK_HD_NV FOREIGN KEY REFERENCES NHANVIEN(MANV),
	TRIGIA MONEY
)

CREATE TABLE CTHD
(
	SOHD INT,
	MASP CHAR(4),
	SL INT,
	CONSTRAINT PK_CTHD PRIMARY KEY(SOHD, MASP),
)
select * from CTHD
SET DATEFORMAT dmy
INSERT INTO KHACHHANG VALUES ('KH01','Nguyen Van A','731 Tran Hung Dao, Q5, TpHCM','08823451','22/10/1960 ',13060000 ,'22/07/2006')
INSERT INTO KHACHHANG VALUES ('KH02','Tran Ngoc Han','23/5 Nguyen Trai, Q5, TpHCM','0908256478','3/4/1974 ',280000 ,'30/07/2006')
INSERT INTO KHACHHANG VALUES ('KH03','Tran Ngoc Linh','45 Nguyen Canh Chan, Q1, TpHCM','0938776266','12/6/1980 ',3860000 ,'05/08/2006')
INSERT INTO KHACHHANG VALUES ('KH04','Tran Minh Long','50/34 Le Dai Hanh, Q10, TpHCM','0917325476','9/3/1965 ',250000 ,'02/10/2006')
INSERT INTO KHACHHANG VALUES ('KH05','Le Nhat Minh','34 Truong Dinh, Q3, TpHCM','08246108','10/3/1950 ',21000 ,'28/10/2006')
INSERT INTO KHACHHANG VALUES ('KH06','Le Hoai Thuong','227 Nguyen Van Cu, Q5, TpHCM','08631738','31/12/1981 ',915000 ,'24/11/2006')
INSERT INTO KHACHHANG VALUES ('KH07','Nguyen Van Tam','32/3 Tran Binh Trong, Q5, TpHCM','0916783565','6/4/1971 ',12500 ,'01/12/2006')
INSERT INTO KHACHHANG VALUES ('KH08','Phan Thi Thanh','45/2 An Duong Vuong, Q5, TpHCM','0938435756','10/1/1971 ',365000 ,'13/12/2006')
INSERT INTO KHACHHANG VALUES ('KH09','Le Ha Vinh','873 Le Hong Phong, Q5, TpHCM','08654763','3/9/1979 ',70000 ,'14/01/2007')
INSERT INTO KHACHHANG VALUES ('KH10','Ha Duy Lap','34/34B Nguyen Trai, Q1, TpHCM','08768904','2/5/1983 ',67500 ,'16/01/2007')

/*Nhập dữ liệu NHANVIEN*/
SET DATEFORMAT dmy
INSERT INTO NHANVIEN VALUES('NV01','Nguyen Nhu Nhut','13/4/2006','0927345678')
INSERT INTO NHANVIEN VALUES('NV02','Le Thi Phi Yen','21/4/2006','0987567390')
INSERT INTO NHANVIEN VALUES('NV03','Nguyen Van B','27/4/2006','0997047382')
INSERT INTO NHANVIEN VALUES('NV04','Ngo Thanh Tuan','24/6/2006','0913758498')
INSERT INTO NHANVIEN VALUES('NV05','Nguyen Thi Truc Thanh','20/7/2006','0918590387')

/*Nhập dữ liệu SANPHAM*/
INSERT INTO SANPHAM VALUES('BC01','But chi','cay','Singapore',3000)
INSERT INTO SANPHAM VALUES('BC02','But chi','cay','Singapore',5000)
INSERT INTO SANPHAM VALUES('BC03','But chi','cay','Viet Nam',3500)
INSERT INTO SANPHAM VALUES('BC04','But chi','hop','Viet Nam',30000)
INSERT INTO SANPHAM VALUES('BB01','But bi','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('BB02','But bi','cay','Trung Quoc',7000)
INSERT INTO SANPHAM VALUES('BB03','But bi','hop','Thai Lan',100000)
INSERT INTO SANPHAM VALUES('TV01','Tap 100 giay mong','quyen','Trung Quoc',2500)
INSERT INTO SANPHAM VALUES('TV02','Tap 200 giay mong','quyen','Trung Quoc',4500)
INSERT INTO SANPHAM VALUES('TV03','Tap 100 giay tot','quyen','Viet Nam',3000)
INSERT INTO SANPHAM VALUES('TV04','Tap 200 giay tot','quyen','Viet Nam',5500)
INSERT INTO SANPHAM VALUES('TV05','Tap 100 trang','chuc','Viet Nam',23000)
INSERT INTO SANPHAM VALUES('TV06','Tap 200 trang','chuc','Viet Nam',53000)
INSERT INTO SANPHAM VALUES('TV07','Tap 100 trang','chuc','Trung Quoc',34000)
INSERT INTO SANPHAM VALUES('ST01','So tay 500 trang','quyen','Trung Quoc',40000)
INSERT INTO SANPHAM VALUES('ST02','So tay loai 1','quyen','Viet Nam',55000)
INSERT INTO SANPHAM VALUES('ST03','So tay loai 2','quyen','Viet Nam',51000)
INSERT INTO SANPHAM VALUES('ST04','So tay','quyen','Thai Lan',55000)
INSERT INTO SANPHAM VALUES('ST05','So tay mong','quyen','Thai Lan',20000)
INSERT INTO SANPHAM VALUES('ST06','Phan viet bang','hop','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST07','Phan khong bui','hop','Viet Nam',7000)
INSERT INTO SANPHAM VALUES('ST08','Bong bang','cai','Viet Nam',1000)
INSERT INTO SANPHAM VALUES('ST09','But long','cay','Viet Nam',5000)
INSERT INTO SANPHAM VALUES('ST10','But long','cay','Trung Quoc',7000)

/*Nhập dữ liệu HOADON*/
INSERT INTO HOADON VALUES('1001','23/07/2006','KH01','NV01',320000)
INSERT INTO HOADON VALUES('1002','12/08/2006','KH01','NV02',840000)
INSERT INTO HOADON VALUES('1003','23/08/2006','KH02','NV01',100000)
INSERT INTO HOADON VALUES('1004','01/09/2006','KH02','NV01',180000)
INSERT INTO HOADON VALUES('1005','20/10/2006','KH01','NV02',3800000)
INSERT INTO HOADON VALUES('1006','16/10/2006','KH01','NV03',2430000)
INSERT INTO HOADON VALUES('1007','28/10/2006','KH03','NV03',510000)
INSERT INTO HOADON VALUES('1008','28/10/2006','KH01','NV03',440000)
INSERT INTO HOADON VALUES('1009','28/10/2006','KH03','NV04',200000)
INSERT INTO HOADON VALUES('1010','01/11/2006','KH01','NV01',5200000)
INSERT INTO HOADON VALUES('1011','04/11/2006','KH04','NV03',250000)
INSERT INTO HOADON VALUES('1012','30/11/2006','KH05','NV03',21000)
INSERT INTO HOADON VALUES('1013','12/12/2006','KH06','NV01',5000)
INSERT INTO HOADON VALUES('1014','31/12/2006','KH03','NV02',3150000)
INSERT INTO HOADON VALUES('1015','01/01/2007','KH06','NV01',910000)
INSERT INTO HOADON VALUES('1016','01/01/2007','KH07','NV02',12500)
INSERT INTO HOADON VALUES('1017','02/01/2007','KH08','NV03',35000)
INSERT INTO HOADON VALUES('1018','13/01/2007','KH08','NV03',330000)
INSERT INTO HOADON VALUES('1019','13/01/2007','KH01','NV03',30000)
INSERT INTO HOADON VALUES('1020','14/01/2007','KH09','NV04',70000)
INSERT INTO HOADON VALUES('1021','16/01/2007','KH10','NV03',67500)
INSERT INTO HOADON VALUES('1022','16/01/2007',Null,'NV03',7000)
INSERT INTO HOADON VALUES('1023','17/01/2007',Null,'NV01',330000)

/*Nhập dữ liệu CTHD*/
INSERT INTO CTHD VALUES(1001,'TV02',10)
INSERT INTO CTHD VALUES(1001,'ST01',5)
INSERT INTO CTHD VALUES(1001,'BC01',5)
INSERT INTO CTHD VALUES(1001,'BC02',10)
INSERT INTO CTHD VALUES(1001,'ST08',10)
INSERT INTO CTHD VALUES(1002,'BC04',20)
INSERT INTO CTHD VALUES(1002,'BB01',20)
INSERT INTO CTHD VALUES(1002,'BB02',20)
INSERT INTO CTHD VALUES(1003,'BB03',10)
INSERT INTO CTHD VALUES(1004,'TV01',20)
INSERT INTO CTHD VALUES(1004,'TV02',10)
INSERT INTO CTHD VALUES(1004,'TV03',10)
INSERT INTO CTHD VALUES(1004,'TV04',10)
INSERT INTO CTHD VALUES(1005,'TV05',50)
INSERT INTO CTHD VALUES(1005,'TV06',50)
INSERT INTO CTHD VALUES(1006,'TV07',20)
INSERT INTO CTHD VALUES(1006,'ST01',30)
INSERT INTO CTHD VALUES(1006,'ST02',10)
INSERT INTO CTHD VALUES(1007,'ST03',10)
INSERT INTO CTHD VALUES(1008,'ST04',8)
INSERT INTO CTHD VALUES(1009,'ST05',10)
INSERT INTO CTHD VALUES(1010,'TV07',50)
INSERT INTO CTHD VALUES(1010,'ST07',50)
INSERT INTO CTHD VALUES(1010,'ST08',100)
INSERT INTO CTHD VALUES(1010,'ST04',50)
INSERT INTO CTHD VALUES(1010,'TV03',100)
INSERT INTO CTHD VALUES(1011,'ST06',50)
INSERT INTO CTHD VALUES(1012,'ST07',3)
INSERT INTO CTHD VALUES(1013,'ST08',5)
INSERT INTO CTHD VALUES(1014,'BC02',80)
INSERT INTO CTHD VALUES(1014,'BB02',100)
INSERT INTO CTHD VALUES(1014,'BC04',60)
INSERT INTO CTHD VALUES(1014,'BB01',50)
INSERT INTO CTHD VALUES(1015,'BB02',30)
INSERT INTO CTHD VALUES(1015,'BB03',7)
INSERT INTO CTHD VALUES(1016,'TV01',5)
INSERT INTO CTHD VALUES(1017,'TV02',1)
INSERT INTO CTHD VALUES(1017,'TV03',1)
INSERT INTO CTHD VALUES(1017,'TV04',5)
INSERT INTO CTHD VALUES(1018,'ST04',6)
INSERT INTO CTHD VALUES(1019,'ST05',1)
INSERT INTO CTHD VALUES(1019,'ST06',2)
INSERT INTO CTHD VALUES(1020,'ST07',10)
INSERT INTO CTHD VALUES(1021,'ST08',5)
INSERT INTO CTHD VALUES(1021,'TV01',7)
INSERT INTO CTHD VALUES(1021,'TV02',10)
INSERT INTO CTHD VALUES(1022,'ST07',1)
INSERT INTO CTHD VALUES(1023,'ST04',6)

--Ngôn ngữ định nghĩa dữ liệu (Data Definition Language):
--1. Tạo các quan hệ và khai báo các khóa chính, khóa ngoại của quan hệ. -> DONE
--2. Thêm vào thuộc tính GHICHU có kiểu dữ liệu varchar(20) cho quan hệ SANPHAM.
ALTER TABLE SANPHAM
ADD GHICHU VARCHAR(20)
--3.Thêm vào thuộc tính LOAIKH có kiểu dữ liệu là tinyint cho quan hệ KHACHHANG.
ALTER TABLE KHACHHANG
ADD LOAIKH TINYINT

--4. Sửa kiểu dữ liệu của thuộc tính GHICHU trong quan hệ SANPHAM thành varchar(100).
ALTER TABLE SANPHAM
ALTER COLUMN GHICHU VARCHAR(100)
--5. Xóa thuộc tính GHICHU trong quan hệ SANPHAM.
ALTER TABLE SANPHAM
DROP COLUMN GHICHU

--6. Làm thế nào để thuộc tính LOAIKH trong quan hệ KHACHHANG có thể lưu các giá trị là: “Vang lai”, “Thuong xuyen”, “Vip”…
ALTER TABLE KHACHHANG
ADD CONSTRAINT LOAIKH_KH CHECK(LOAIKH IN ('Vang lai', 'Thuong xuyen', 'Vip',''))
--7. Đơn vị tính của sản phẩm chỉ có thể là (“cay”,”hop”,”cai”,”quyen”,”chuc”)
ALTER TABLE SANPHAM
ADD CONSTRAINT DV CHECK(DVT IN ('cay','hop','cai','quyen','chuc'))
--8. Giá bán của sản phẩm từ 500 đồng trở lên.
ALTER TABLE SANPHAM
ADD CONSTRAINT CS_GIA CHECK(GIA >= 500)


--*******************************************************************************************************************
--    BÀI TẬP THỰC HÀNH BUỔI 5                                 BÀI TẬP THỰC HÀNH BUỔI 5
--                                  BÀI TẬP THỰC HÀNH BUỔI 5                             BÀI TẬP THỰC HÀNH BUỔI 5
--    BÀI TẬP THỰC HÀNH BUỔI 5                                 BÀI TẬP THỰC HÀNH BUỔI 5
--********************************************************************************************************************

-- CÂU 1:
--In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất.
SELECT MASP, TENSP 
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'
-- CÂU 2:
--In ra danh sách các sản phẩm (MASP, TENSP) có đơn vị tính là “cay”, ”quyen”.
SELECT MASP, TENSP
FROM SANPHAM
WHERE DVT = 'cay'
UNION 
SELECT MASP, TENSP
FROM SANPHAM
WHERE DVT = 'quyen'
-- CÂU 3:
--In ra danh sách các sản phẩm (MASP,TENSP) có mã sản phẩm bắt đầu là “B” và kết thúc là “01”.
SELECT MASP, TENSP
FROM SANPHAM
WHERE MASP LIKE 'B%'
INTERSECT
SELECT  MASP, TENSP
FROM SANPHAM
WHERE MASP LIKE '%01'
-- CÂU 4:
--In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quốc” sản xuất có giá từ 30.000 đến 40.000.
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX ='Trung Quoc' AND (GIA BETWEEN 30000 AND 40000)
-- CÂU 5:
--In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” hoặc “Thai Lan” sản xuất có giá từ 30.000 đến 40.000.
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX ='Trung Quoc' AND (GIA BETWEEN 30000 AND 40000)
UNION
SELECT MASP,TENSP
FROM SANPHAM
WHERE NUOCSX ='Thai Lan' AND (GIA BETWEEN 30000 AND 40000)
-- CÂU 6:
--In ra các số hóa đơn, trị giá hóa đơn bán ra trong ngày 1/1/2007 và ngày 2/1/2007.
SET DATEFORMAT DMY

SELECT SOHD, TRIGIA
FROM HOADON
WHERE NGHD BETWEEN '01/01/2007' AND '02/01/2007'
-- CÂU 7:
--In ra các số hóa đơn, trị giá hóa đơn trong tháng 1/2007, sắp xếp theo ngày (tăng dần) và trị giá của
--hóa đơn (giảm dần).
SELECT SOHD, TRIGIA
FROM HOADON
WHERE MONTH(NGHD) = 1 AND YEAR(NGHD)=2007
ORDER BY NGHD ASC, TRIGIA DESC
-- CÂU 8:
--In ra danh sách các khách hàng (MAKH, HOTEN) đã mua hàng trong ngày 1/1/2007.
SELECT KHACHHANG.MAKH, HOTEN
FROM KHACHHANG JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH
WHERE NGHD = '01/01/2007'
-- CÂU 9:
--In ra số hóa đơn, trị giá các hóa đơn do nhân viên có tên “Nguyen Van B” lập trong ngày 28/10/2006.
SELECT SOHD, TRIGIA
FROM HOADON JOIN NHANVIEN NV ON HOADON.MANV = NV.MANV
WHERE HOTEN ='Nguyen Van B' AND NGHD = '28/10/2006'
-- CÂU 10:
--In ra danh sách các sản phẩm (MASP,TENSP) được khách hàng có tên “Nguyen Van A” mua trong
--tháng 10/2006.
SELECT SP.MASP, TENSP
FROM ((SANPHAM SP JOIN CTHD ON SP.MASP = CTHD.MASP ) JOIN HOADON HD ON CTHD.SOHD = HD.SOHD) 
WHERE MAKH IN (SELECT MAKH FROM KHACHHANG WHERE HOTEN ='Nguyen Van A')
AND MONTH(HD.NGHD) = 10 
AND YEAR(NGHD) = '2006'
-- CÂU 11:
--Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”.
SELECT SOHD 
FROM CTHD
WHERE MASP = 'BB01'
UNION
SELECT SOHD 
FROM CTHD
WHERE MASP = 'BB02'
-- CÂU 12:
--Tìm các số hóa đơn đã mua sản phẩm có mã số “BB01” hoặc “BB02”, mỗi sản phẩm mua với số
--lượng từ 10 đến 20.
SELECT SOHD 
FROM CTHD
WHERE MASP = 'BB01' AND SL BETWEEN 10 AND 20
UNION
SELECT SOHD 
FROM CTHD
WHERE MASP = 'BB02' AND SL BETWEEN 10 AND 20
-- CÂU 13:
--Tìm các số hóa đơn mua cùng lúc 2 sản phẩm có mã số “BB01” và “BB02”, mỗi sản phẩm mua với
--số lượng từ 10 đến 20.
SELECT SOHD 
FROM CTHD
WHERE MASP = 'BB01' AND SL BETWEEN 10 AND 20
INTERSECT
SELECT SOHD 
FROM CTHD
WHERE MASP = 'BB02' AND SL BETWEEN 10 AND 20
--CÂU 14:
--In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất hoặc các sản phẩm được
--bán ra trong ngày 1/1/2007.
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX ='Trung Quoc'
UNION 
SELECT SANPHAM.MASP, TENSP
FROM SANPHAM JOIN CTHD ON SANPHAM.MASP = CTHD.MASP JOIN HOADON ON CTHD.SOHD = HOADON.SOHD
WHERE NGHD='01/01/2007'
--CÂU 15:
--In ra danh sách các sản phẩm (MASP,TENSP) không bán được.
SELECT MASP, TENSP
FROM SANPHAM 
WHERE MASP NOT IN  (SELECT MASP FROM CTHD)
--CÂU 16:
--In ra danh sách các sản phẩm (MASP,TENSP) không bán được trong năm 2006.
SELECT MASP, TENSP
FROM SANPHAM 
WHERE MASP NOT IN  (SELECT MASP FROM CTHD JOIN HOADON ON CTHD.SOHD = HOADON.SOHD WHERE YEAR(NGHD) = 2006)
--CÂU 17:
--In ra danh sách các sản phẩm (MASP,TENSP) do “Trung Quoc” sản xuất không bán được trong năm 2006.
SELECT MASP, TENSP 
FROM SANPHAM 
WHERE NUOCSX = 'Trung Quoc'
AND MASP NOT IN (SELECT MASP FROM CTHD JOIN HOADON ON CTHD.SOHD = HOADON.SOHD WHERE YEAR(NGHD) = 2006)
--CÂU 18:
--Tìm số hóa đơn trong năm 2006 đã mua ít nhất tất cả các sản phẩm do Singapore sản xuất.
SELECT SOHD
FROM HOADON
WHERE YEAR(NGHD)=2006
AND NOT EXISTS
(SELECT * FROM SANPHAM WHERE NUOCSX = 'Singapore' AND NOT EXISTS
(SELECT * FROM CTHD WHERE SOHD = HOADON.SOHD AND SANPHAM.MASP = CTHD.MASP))
 
--CÂU 19:
--Có bao nhiêu hóa đơn không phải của khách hàng đăng ký thành viên mua?
SELECT COUNT(SOHD) AS KHONG_PHAI_KH
FROM HOADON 
WHERE MAKH IS NULL
--CÂU 20:
--Có bao nhiêu sản phẩm khác nhau được bán ra trong năm 2006.
SELECT COUNT(DISTINCT MASP) AS TONGSANPHAM
FROM CTHD JOIN HOADON HD ON CTHD.SOHD = HD.SOHD
WHERE YEAR(NGHD) = 2006
--CÂU 21:
--Cho biết trị giá hóa đơn cao nhất, thấp nhất là bao nhiêu?
(SELECT TRIGIA  AS TRIGIA_MAX_MIN
FROM HOADON 
WHERE TRIGIA >= ALL(SELECT TRIGIA FROM HOADON))

(SELECT TRIGIA  AS TRIGIA_MIN
FROM HOADON 
WHERE TRIGIA <= ALL(SELECT TRIGIA FROM HOADON))
--CÂU 22:
--Trị giá trung bình của tất cả các hóa đơn được bán ra trong năm 2006 là bao nhiêu?
SELECT AVG(TRIGIA) AS AVERAGE_2006
FROM HOADON
WHERE YEAR(NGHD) = 2006
--CÂU 23:
--Tính doanh thu bán hàng trong năm 2006.
SELECT SUM(TRIGIA) AS DOANHTHU_2006
FROM HOADON
WHERE YEAR(NGHD) =2006
--CÂU 24:
--Tìm số hóa đơn có trị giá cao nhất trong năm 2006.
SELECT SOHD
FROM HOADON
WHERE HOADON.TRIGIA >= ALL(SELECT TRIGIA FROM HOADON WHERE YEAR(NGHD) =2006)
--CÂU 25:
--Tìm họ tên khách hàng đã mua hóa đơn có trị giá cao nhất trong năm 2006.
SELECT HOTEN
FROM KHACHHANG JOIN HOADON ON KHACHHANG.MAKH = HOADON.MAKH
WHERE HOADON.TRIGIA >= ALL(SELECT TRIGIA FROM HOADON) 
AND YEAR(NGHD) = 2006
--CÂU 26:
--In ra danh sách 3 khách hàng (MAKH, HOTEN) có doanh số cao nhất.
SELECT TOP 3 MAKH, HOTEN
FROM KHACHHANG
ORDER BY DOANHSO DESC
--CÂU 27:
--In ra danh sách các sản phẩm (MASP, TENSP) có giá bán bằng 1 trong 3 mức giá cao nhất.
SELECT MASP, TENSP
FROM SANPHAM
WHERE GIA IN (SELECT TOP 3 GIA FROM SANPHAM ORDER BY GIA DESC)
--CÂU 28:
--In ra danh sách các sản phẩm (MASP, TENSP) do “Thai Lan” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của tất cả các sản phẩm).
SELECT MASP, TENSP
FROM SANPHAM
WHERE GIA IN (SELECT TOP 3 GIA FROM SANPHAM ORDER BY GIA DESC) AND NUOCSX= 'Thai Lan'
--CÂU 29:
--In ra danh sách các sản phẩm (MASP, TENSP) do “Trung Quoc” sản xuất có giá bằng 1 trong 3 mức
--giá cao nhất (của sản phẩm do “Trung Quoc” sản xuất).
SELECT MASP, TENSP
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc' AND GIA IN (SELECT TOP 3 GIA FROM SANPHAM WHERE NUOCSX ='Trung Quoc' 
ORDER BY GIA DESC)
--CÂU 30:
--In ra danh sách 3 khách hàng có doanh số cao nhất (sắp xếp theo kiểu xếp hạng).
SELECT TOP 3 *
FROM KHACHHANG
ORDER BY DOANHSO DESC
--CÂU 31:
--Tính tổng số sản phẩm do “Trung Quoc” sản xuất.
SELECT COUNT(MASP)
FROM SANPHAM
WHERE NUOCSX = 'Trung Quoc'
--CÂU 32:
--Tính tổng số sản phẩm của từng nước sản xuất.
SELECT NUOCSX,COUNT(MASP)
FROM SANPHAM
GROUP BY NUOCSX
--CÂU 33:
--Với từng nước sản xuất, tìm giá bán cao nhất, thấp nhất, trung bình của các sản phẩm.
SELECT NUOCSX, MAX(GIA) AS _MAX, AVG(GIA) AS _AVG , MIN(GIA) AS _MIN
FROM SANPHAM
GROUP BY NUOCSX
--CÂU 34:
--Tính doanh thu bán hàng mỗi ngày.
SELECT NGHD, SUM(TRIGIA) AS _SUM
FROM HOADON
GROUP BY NGHD
--CÂU 35:
--Tính tổng số lượng của từng sản phẩm bán ra trong tháng 10/2006.
SELECT MASP, SUM(SL)
FROM CTHD JOIN HOADON ON CTHD.SOHD = HOADON.SOHD
WHERE MONTH(NGHD) = 10 AND YEAR(NGHD) =2006
GROUP BY MASP
--CÂU 36:
--Tính doanh thu bán hàng của từng tháng trong năm 2006.
SELECT MONTH(NGHD)AS THANG, SUM(TRIGIA) AS TRIGIA
FROM HOADON
WHERE YEAR(NGHD)=2006
GROUP BY MONTH(NGHD)
--CÂU 37:
--Tìm hóa đơn có mua ít nhất 4 sản phẩm khác nhau.
SELECT SOHD
FROM CTHD
GROUP BY SOHD
HAVING COUNT( MASP) >=4
--CÂU 38:
--Tìm hóa đơn có mua 3 sản phẩm do “Viet Nam” sản xuất (3 sản phẩm khác nhau).
SELECT SOHD
FROM CTHD JOIN SANPHAM ON CTHD.MASP = SANPHAM.MASP
WHERE NUOCSX ='Viet Nam'
GROUP BY SOHD
HAVING COUNT(CTHD.MASP)=3
--CÂU 39:
--Tìm khách hàng (MAKH, HOTEN) có số lần mua hàng nhiều nhất.
SELECT MAKH, HOTEN
FROM KHACHHANG
WHERE MAKH IN (SELECT TOP 1 MAKH FROM HOADON
GROUP BY MAKH
ORDER BY COUNT(SOHD) DESC)

--CÂU 40:
--Tháng mấy trong năm 2006, doanh số bán hàng cao nhất
SELECT TOP 1 MONTH(NGHD) AS THANG
FROM HOADON
WHERE YEAR(NGHD) = 2006
GROUP BY MONTH(NGHD)
ORDER BY SUM(TRIGIA) DESC
--CÂU 41:
--Tìm sản phẩm (MASP, TENSP) có tổng số lượng bán ra thấp nhất trong năm 2006.
SELECT TOP 1 SP.MASP, TENSP
FROM SANPHAM SP JOIN CTHD ON SP.MASP =  CTHD.MASP JOIN HOADON ON CTHD.SOHD= HOADON.SOHD
WHERE YEAR(NGHD) = 2006
GROUP BY SP.MASP, SP.TENSP
ORDER BY SUM(SL) ASC

--CÂU 42:
--*Mỗi nước sản xuất, tìm sản phẩm (MASP,TENSP) có giá bán cao nhất.
SELECT SANPHAM.NUOCSX, SANPHAM.MASP, SANPHAM.TENSP
FROM SANPHAM 
WHERE SANPHAM.GIA in
(
    SELECT MAX(SP.GIA)
    FROM SANPHAM SP
    WHERE SANPHAM.NUOCSX = SP.NUOCSX
)
--CÂU 43:
--Tìm nước sản xuất sản xuất ít nhất 3 sản phẩm có giá bán khác nhau.
SELECT NUOCSX
FROM SANPHAM
GROUP BY NUOCSX
HAVING COUNT(DISTINCT GIA)>=3 
--CÂU 44:
--*Trong 10 khách hàng có doanh số cao nhất, tìm khách hàng có số lần mua hàng nhiều nhất.
SELECT A.MAKH, A.HOTEN
FROM 

(SELECT TOP 10 MAKH,HOTEN FROM KHACHHANG ORDER BY DOANHSO DESC) AS A JOIN HOADON ON A.MAKH = HOADON.MAKH
GROUP BY A.MAKH, A.HOTEN
HAVING COUNT(SOHD)>=ALL
(SELECT COUNT(SOHD) FROM 
(SELECT TOP 10 KHACHHANG.MAKH FROM KHACHHANG ORDER BY DOANHSO DESC) B JOIN HOADON ON B.MAKH = HOADON.MAKH 
GROUP BY HOADON.MAKH )
