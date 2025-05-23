# BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:

# DEADLINE: 23H59 NGÀY 30/03/2025

# ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)

# BÀI TOÁN: Sửa bài 2 để có csdl như sau:
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

# YÊU CẦU:
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.

# HÌNH THỨC LÀM BÀI:
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.
8. nhớ commit để save nội dung file bai_tap3.md

# DEADLINE: 23H59 NGÀY 30/03/2025

# BÀI LÀM
# 1. Sửa bảng DKMH và bảng Điểm
- Sửa bảng DKMH: tạo cột id_dk (đặt là Primary Key)
  ![image](https://github.com/user-attachments/assets/903b7e05-982c-4abe-a7bf-bbbeb3f61544)
- Tạo bảng Điểm: Đặt Primary Key cho id
  ![image](https://github.com/user-attachments/assets/519ac499-3692-4223-9526-d2419291275d)
# 2. Nhập dữ liệu demo cho các bảng
+ Bảng SinhVien:
![image](https://github.com/user-attachments/assets/6e11ff4a-40e4-4a76-8ddd-cbfd3463605d)

+ Bảng Khoa:
![image](https://github.com/user-attachments/assets/180be6e9-1b7e-4a2e-baa3-8a7778be48a6)

+ Bảng MonHoc:
![image](https://github.com/user-attachments/assets/0a52c899-28e0-48b3-9872-ca8585273869)

+ Bảng GiaoVien:
![image](https://github.com/user-attachments/assets/7cffef8c-06c3-410c-b849-32b0202338e3)

+ Bảng DKMH:
![image](https://github.com/user-attachments/assets/d8da7192-ac54-44de-8116-ad1e06e75a34)

+ Bảng Diem:
![image](https://github.com/user-attachments/assets/ebab80b8-e142-4f84-aca5-678169a5a8de)

- Tạo Diagram:
![Không có tiêu đề](https://github.com/user-attachments/assets/75e75368-d023-4704-9849-42b35e75a6a5)



# 3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần
```sql
SELECT 

    DKMH.MaSV AS [Mã số sinh viên], 

    LopHP.MaLopHP AS [Mã học phần], 

    LopHP.TenLopHP AS [Tên học phần], 

    DKMH.DiemThi AS [Điểm bài thi], 

    DKMH.PhanTramThi AS [Tỷ lệ bài thi], 

    COUNT(Diem.diem) AS [Tổng số điểm], 

    COALESCE(AVG(Diem.diem), 0) AS [Điểm trung bình thành phần]

FROM DKMH

FULL OUTER JOIN Diem ON DKMH.id_dk = Diem.id_dk

INNER JOIN LopHP ON LopHP.MaLopHP = DKMH.MaLopHP

GROUP BY 

    DKMH.MaSV, 

    LopHP.MaLopHP, 

    LopHP.TenLopHP, 

    DKMH.DiemThi, 

    DKMH.PhanTramThi

ORDER BY 

    LopHP.MaLopHP;
```

- Kết quả cho ra:
![image](https://github.com/user-attachments/assets/9ea47967-ba9f-44c1-9e7b-07209523fc67)









  
  

  






