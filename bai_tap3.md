# BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:
## DEADLINE: 23H59 NGÀY 30/03/2025
## ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)
# ĐỀ BÀI
## BÀI TOÁN
### Sửa bài 2 để có csdl như sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)
  + Diem(#id, @id_dk, diem)

## YÊU CẦU
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

## HÌNH THỨC LÀM BÀI
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. Dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. Dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. Upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. Nhớ commit để save nội dung file bai_tap3.md

## *CHÚ Ý*
1. Được phép dùng AI và tham khảo bài của bạn, nhưng phải có sự khác biệt đáng kể.
2. Nghiêm cấm copy, clone. Tham khảo và copy là 2 việc khác hẳn nhau. Thầy có tool để check!
3. Bài làm phải có dấu ấn cá nhân (hãy sáng tạo và biết cách bảo vệ mình nếu bạn là bản chính)
4. Kết quả AI phải phù hợp với yêu cầu, nếu quá sai lệch <=> sv ko đọc => Cấm thi
5. Nên nhớ: cấm thi là ko có vùng cấm và thầy chưa bao giờ nói đùa về việc cấm thi.

# BÀI LÀM
## Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu
Sửa bảng DKMH:
![Screenshot 2025-03-29 155844](https://github.com/user-attachments/assets/ad2fa57e-6cdb-4d68-b388-23ec1869c750)

Tạo bảng Điểm:
![Screenshot 2025-03-29 140755](https://github.com/user-attachments/assets/ce7c69ad-8e88-400f-8eef-d2233f040955)
![Screenshot 2025-03-29 140814](https://github.com/user-attachments/assets/0ce04196-b040-416d-ae8c-4912b8702b9d)

Tạo diagram:
![Screenshot 2025-03-29 163227](https://github.com/user-attachments/assets/76ff2696-81e6-4cb6-9573-92e3a06f7716)


## Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
Các dữ liệu demo của các bảng như sau:

![Screenshot 2025-03-29 160345](https://github.com/user-attachments/assets/9d22c6e0-4317-4916-8bcc-d097f0f794ef)
![Screenshot 2025-03-29 160406](https://github.com/user-attachments/assets/91528af9-00e1-4415-9f2a-3cc4906bc170)
![Screenshot 2025-03-29 160423](https://github.com/user-attachments/assets/53b5e536-3054-42ed-83ef-e754aedd7f44)
![Screenshot 2025-03-29 160440](https://github.com/user-attachments/assets/cf9446ec-bb96-4568-8d3a-c6d3df0a9021)
![Screenshot 2025-03-29 160454](https://github.com/user-attachments/assets/618ebe87-f9bd-42e9-89ef-bca9a101f4c3)
![Screenshot 2025-03-29 160511](https://github.com/user-attachments/assets/498d3c7a-5c29-44d8-901e-8f1cb39e3f93)
![Screenshot 2025-03-29 160536](https://github.com/user-attachments/assets/0c0c4bcd-74c4-4c69-a69e-846b0ff97e37)
![Screenshot 2025-03-29 160551](https://github.com/user-attachments/assets/cad23548-48a3-4539-99b6-16acc99023bb)
![Screenshot 2025-03-29 160557](https://github.com/user-attachments/assets/6811084c-5c2b-408c-8156-f3ae063925c5)

## Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.
**Lệnh truy vấn này tính điểm thành phần của tất cả sinh viên của tất cả lớp học phần.**
```sql
  SELECT 
  
      DKMH.MaSV MSSV, 
      
      LopHP.MaLopHP [Mã lớp HP], 
      
      LopHP.TenLopHP [Tên lớp HP], 
      
      DKMH.DiemThi [Điểm thi], 
      
      DKMH.PhanTramThi [Phần trăm thi], 
      
  	  COUNT(Diem.diem) AS [Số điểm thành phần],
   
      AVG(Diem.diem) AS [Điểm thành phần]
      
  FROM DKMH
  
  LEFT JOIN Diem ON DKMH.id_dk = Diem.id_dk
  
  JOIN LopHP ON DKMH.MaLopHP = LopHP.MaLopHP
  
  GROUP BY DKMH.MaSV, LopHP.MaLopHP, LopHP.TenLopHP, DKMH.DiemThi, DKMH.PhanTramThi
  
  ORDER BY LopHP.MaLopHP;
```
**Kết quả sau khi chạy lệnh truy vấn trên:**

![image](https://github.com/user-attachments/assets/bc2c2a60-81e5-4373-9970-7e43a9f7da05)
