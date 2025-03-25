# BÀI TẬP VỀ NHÀ 02 - K225480106013 - LƯỜNG VĂN HẠNH - MÔN HỆ QUẢN TRỊ CSDL

## DEADLINE: 23H59 NGÀY 25/03/2025

## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 1)
  1. Đã cài đặt SQL Server 2022 Dev.
  2. Đã cài đặt SQL Managerment Studio bản mới nhất.
  3. Đã kết nối từ SQL Managerment Studio vào SQL Server.
  4. Đã có tài khoản github, biết cách tạo repository(kho lưu trữ) cho phép truy cập public.

## HÌNH THỨC LÀM BÀI:
1. Tạo repository mới, tạo file readme.md (có hướng dẫn trên zalo group)
2. Sinh viên thao tác trên máy tính cá nhân, chụp màn hình quá trình làm, chỉ cần chụp active window, thi thoảng chụp full màn hình để thấy sự cá nhân hoá.
3. Hình sau khi chụp paste trực tiếp vào file readme trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. upload các file liên quan: Script_DML.sql
5. Update link của repository vào cột bài tập 2 trên file excel online của thầy (đã ghim link trên zalo group)

## CHÚ Ý:
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

# ĐỀ BÀI
## BÀI TOÁN
### Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  - SinhVien(#masv,hoten,NgaySinh)
  - Lop(#maLop,tenLop)
  - GVCN(#@maLop,#@magv,#HK)
  - LopSV(#@maLop,#@maSV,ChucVu)
  - GiaoVien(#magv,hoten,NgaySinh,@maBM)
  - BoMon(#MaBM,tenBM,@maKhoa)
  - Khoa(#maKhoa,tenKhoa)
  - MonHoc(#mamon,Tenmon,STC)
  - LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  - DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)
## YÊU CẦU
### Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
- Tạo database mới, mô tả các tham số(nếu có) trong quá trình. 
- Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu) 
- Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
### Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
# BÀI LÀM
## THỰC HIỆN TẠO CSDL(QLSV) CỦA BÀI TOÁN BẰNG UI
### Tạo database mới tên QLSV: 

Mở SSMS, kết nối với SQL server rồi thao tác như sau để tạo new database:

Bước 1: Mở cửa sổ new database.

![1](https://github.com/user-attachments/assets/8b3d3321-2d53-4c86-8c53-2674fe4dc630)

Bước 2: Đặt tên và hiệu chỉnh các tham số khác nếu cần thiết.

![2](https://github.com/user-attachments/assets/ed08f17e-d116-4570-b99b-3feabf967a2f)

Bước 3: Database đã tạo thành công.

![3](https://github.com/user-attachments/assets/bb465512-2d8f-4e1c-a071-710ec8e400d7)

#### Tạo các bảng dữ liệu với các trường như mô tả trong đề bài, chọn kiểu dữ liệu phù hợp với thực tế: 

Theo tìm hiểu trên portal thì ta thu được thông tin tương đối như sau: 

1. Mã (not null)
- Mã lớp sinh viên và mã lớp học phần là kiểu varchar(11)
- Mã giáo viên là kiểu varchar(5)
- Mã môn học là kiểu varchar(6)
- Mã bộ môn là kiểu varchar(6)
- Mã khoa là kiểu varchar(3)
2. Tên (not null)
- Các trường tên là kiểu nvarchar(50)
3. Ngày sinh (allow null)
- Ngày sinh là kiểu Date 
4. Học kỳ (not null)
- Học kỳ là kiển int

Từ các thông tin trên ta tạo các bảng với các khóa theo yêu cầu của bài toán như sau:

Bước 1: Mở giao diện tạo bảng.

![4](https://github.com/user-attachments/assets/bb35d2a3-cdb1-4c5e-8012-7c7d627e4fcf)

Bước 2: Thiết lập các trường và các khóa như đề bài yêu cầu.

![5](https://github.com/user-attachments/assets/58f7267c-73e6-4784-8dc9-5a51a0d3a2f6)

![6](https://github.com/user-attachments/assets/83212f8b-7250-4f18-b2e4-6ab9b22a8cc9)

![7](https://github.com/user-attachments/assets/555c3658-9727-4de9-b3e2-7cb9d2891838)

![8](https://github.com/user-attachments/assets/33cb9870-60a5-48af-8e27-646dfd9e5ac4)

![9](https://github.com/user-attachments/assets/7512759d-9d1a-46d3-b5f6-3268e69fffce)

![10](https://github.com/user-attachments/assets/133a6aba-b1b2-48ba-ac6c-6bdf8cd2f2e3)

![11](https://github.com/user-attachments/assets/3f0418e6-0256-4539-b355-a7380db832b4)

![12](https://github.com/user-attachments/assets/0b5057cf-9eb7-4429-bc06-56d4807c40c1)

![13](https://github.com/user-attachments/assets/9b5a5194-a36d-4e88-8fba-0fc24c5cd9bc)

![14](https://github.com/user-attachments/assets/461339ac-1a30-439c-8fb2-0b2b9cca3806)

![15](https://github.com/user-attachments/assets/677c4a3f-ce83-4ac9-a5d8-5872b34e9db2)

![16](https://github.com/user-attachments/assets/423c1109-bcff-4252-981b-56d7014ae9d2)

![17](https://github.com/user-attachments/assets/59764707-cd67-4cea-9237-f0cdd4f5c972)

Bước 3: Sau khi tạo các bảng thành công thì refresh để hiện ra các bảng vừa tạo.

![18](https://github.com/user-attachments/assets/ce9f8ae1-8243-47d3-b31d-6ec0c4a46cbe)

## THỰC HIỆN TẠO CSDL TƯƠNG ĐƯƠNG BẰNG LỆNH SQL

CREATE DATABASE QLSV;

USE QLSV;

CREATE TABLE SinhVien (
    MaSV VARCHAR(13) PRIMARY KEY,
    TenSV NVARCHAR(50) NOT NULL,
    NgaySinh DATE,
);

CREATE TABLE Lop (
    MaLop VARCHAR(11) PRIMARY KEY,
    TenLop NVARCHAR(50) NOT NULL,
);

CREATE TABLE LopSV (
    MaLop VARCHAR(11),
    MaSV VARCHAR(13),
	ChucVu NVARCHAR(50),
    PRIMARY KEY (MaLop, MaSV),
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);

CREATE TABLE Khoa (
    MaKhoa VARCHAR(3) PRIMARY KEY,
    TenKhoa NVARCHAR(50) NOT NULL,
);

CREATE TABLE BoMon (
    MaBM VARCHAR(6) PRIMARY KEY,
    TenBM NVARCHAR(50) NOT NULL,
    MaKhoa VARCHAR(3) NOT NULL,
	FOREIGN KEY (MaKhoa) REFERENCES Khoa(MaKhoa)
);

CREATE TABLE MonHoc (
    MaMon VARCHAR(6) PRIMARY KEY,
    TenMon NVARCHAR(50),
    STC INT NOT NULL
);

CREATE TABLE GiaoVien (
    MaGV VARCHAR(5) PRIMARY KEY,
    TenGV NVARCHAR(50) NOT NULL,
	NgaySinh DATE,
    MaBM VARCHAR(6) NOT NULL,
    FOREIGN KEY (MaBM) REFERENCES BoMon(MaBM)
);

CREATE TABLE GVCN (
    MaGV VARCHAR(5),
    MaLop VARCHAR(11),
	HK INT,
	PRIMARY KEY (MaLop, MaGV, HK),
    FOREIGN KEY (MaLop) REFERENCES Lop(MaLop),
	FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);

CREATE TABLE LopHP (
    MaLopHP VARCHAR(11) PRIMARY KEY,
    TenLopHP NVARCHAR(50) NOT NULL,
    HK INT NOT NULL,
	MaMon VARCHAR(6) NOT NULL,
	MaGV VARCHAR(5) NOT NULL,
    FOREIGN KEY (MaMon) REFERENCES MonHoc(MaMon),
    FOREIGN KEY (MaGV) REFERENCES GiaoVien(MaGV)
);

CREATE TABLE DKMH (
    MaLopHP VARCHAR(11) PRIMARY KEY,
    MaSV VARCHAR(13) NOT NULL,
    DiemTP FLOAT,
	DiemThi FLOAT,
	PhanTramThi FLOAT,
    FOREIGN KEY (MaLopHP) REFERENCES LopHP(MaLopHP),
    FOREIGN KEY (MaSV) REFERENCES SinhVien(MaSV)
);
