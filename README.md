Bài tập 2 (20/3/2025) k225480106082 - Vũ Việt Anh - Môn Hệ quản trị csdl
BÀI TOÁN:
- Tạo csdl quan hệ với tên QLSV gồm các bảng sau:
  + SinhVien(#masv,hoten,NgaySinh)
  + Lop(#maLop,tenLop)
  + GVCN(#@maLop,#@magv,#HK)
  + LopSV(#@maLop,#@maSV,ChucVu)
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)
  + BoMon(#MaBM,tenBM,@maKhoa)
  + Khoa(#maKhoa,tenKhoa)
  + MonHoc(#mamon,Tenmon,STC)
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)
  + DKMH(#@maLopHP,#@maSV,DiemTP,DiemThi,PhanTramThi)

YÊU CẦU:
1. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán:
  + Tạo database mới, mô tả các tham số(nếu có) trong quá trình.
  + Tạo các bảng dữ liệu với các trường như mô tả, chọn kiểu dữ liệu phù hợp với thực tế (tự tìm hiểu)
  + Mỗi bảng cần thiết lập PK, FK(s) và CK(s) nếu cần thiết. (chú ý dấu # và @: # là chỉ PK, @ chỉ FK)
2. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql





BÀI LÀM
## 1. Tạo DATABASE mới
![Không có tiêu đề](https://github.com/user-attachments/assets/8ec894f9-2f64-4706-84e7-267165dd2010)
## 2. Tạo bảng Sinh Viên (Masv, Hoten, Ngaysinh)
![image](https://github.com/user-attachments/assets/50211104-17ab-44e2-a44a-da905a284939)
*Lưu bảng với tên Sinhvien:
![image](https://github.com/user-attachments/assets/201831df-9f7e-4de2-b49f-12a3cb10dcc8)
+ Tạo bảng Lop (#MaLop,TenLop):
![image](https://github.com/user-attachments/assets/3581e84e-09d1-4d28-8112-b0006226d211)
+ Tạo bảng GVCN (#@MaLop,#@Magv,#HK):
![image](https://github.com/user-attachments/assets/dd582cd8-b9a9-40ee-a534-3c83bca95622)
+ Tạo bảng LopSV (#@MaLop,#@MaSV,ChucVu):
![image](https://github.com/user-attachments/assets/211b3057-8a3e-4140-8204-a895a04ff9e5)
+ Tạo bảng GiaoVien (#Magv,HoTen,NgaySinh,@MaBM):
![image](https://github.com/user-attachments/assets/6ce5b16d-b935-417b-a9a4-486df716fbe7)
+ Tạo bảng BoMon (#MaBM,TenBM,@MaKhoa):
![image](https://github.com/user-attachments/assets/56286064-abed-4a4a-ad76-65f14a0255b8)
+ Tạo bảng Khoa (#MaKhoa,TenKhoa):
![image](https://github.com/user-attachments/assets/6e628f56-0093-41d8-94f9-174603d5acd6)
+ Tạo bảng MonHoc(#Mamon,Tenmon,STC):
![image](https://github.com/user-attachments/assets/03c508e1-e281-49f7-9575-639d764a099c)
+ Tạo bảng LopHP (#MaLopHP,TenLopHP,HK,@MaMon,@MaGV):
![image](https://github.com/user-attachments/assets/34fe081d-6747-40ac-92a2-9bddfc36c272)
+ Tạo bảng DKMH (#@MaLopHP,#@MaSV,DiemTP,DiemThi,PhanTramThi):
![image](https://github.com/user-attachments/assets/33033a36-28cc-44ec-9d30-5394ace1f12e)

## 3. Thiết lập PK, FK(s) và CK(s)
![khoachinh](https://github.com/user-attachments/assets/42fd4b70-2735-43af-969a-6f2c447a490e)
Lưu ý: Khoá chính không cho phép giá trị null.


















