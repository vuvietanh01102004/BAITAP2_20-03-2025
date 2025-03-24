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
# I. Thực hiện các hành động sau trên giao diện đồ hoạ để tạo cơ sở dữ liệu cho bài toán
## 1. Tạo DATABASE mới
![Không có tiêu đề](https://github.com/user-attachments/assets/8ec894f9-2f64-4706-84e7-267165dd2010)
## 2. Tạo bảng Sinh Viên (Masv, Hoten, Ngaysinh)
![image](https://github.com/user-attachments/assets/50211104-17ab-44e2-a44a-da905a284939)
+ Lưu bảng với tên Sinhvien:
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
+ Để thiết lập khoá PK:
![khoachinh](https://github.com/user-attachments/assets/42fd4b70-2735-43af-969a-6f2c447a490e)
Lưu ý: Khoá chính không cho phép giá trị null.
+ Tại phần giao diện, chuột phải vào phần muốn thiết lập -> Script Table as -> CREATE To -> New Query Editor Window
![image](https://github.com/user-attachments/assets/b6de6e84-44bc-4bad-9b83-7fe6f09e8e8a)
![image](https://github.com/user-attachments/assets/f5379159-2062-454b-92ae-93b4acd64bff)
- CONSTRAINT [PK_GVCN]: Đây là cách đặt tên cho ràng buộc khóa chính, với tên là PK_GVCN (Primary Key của bảng GVCN). Bạn có thể tùy chỉnh tên ràng buộc này theo ý muốn.
- PRIMARY KEY CLUSTERED:
  + PRIMARY KEY: Xác định rằng ràng buộc này là khóa chính. Khóa chính đảm bảo:
    + Không có giá trị trùng lặp trong tổ hợp các cột.
    + Không có giá trị NULL trong các cột thuộc khoá chính.
  + CLUSTERED: Dữ liệu trong bảng sẽ được sắp xếp vật lý trên đĩa theo thứ tự của khóa chính này.
+ Chọn mối quan hệ như hình trên:
![image](https://github.com/user-attachments/assets/65c21e76-ef51-4b07-ac0a-161c7ee2fb15)
+ Tiếp tục chọn Add -> Đổi tên Id -> Chọn kí hiệu dấu ba chấm Tables And Columns Spec:
![Ảnh chụp màn hình 2025-03-24 201902](https://github.com/user-attachments/assets/a41c62b3-dcc7-49d0-b171-2752249e5d63)

![Ảnh chụp màn hình 2025-03-24 202603](https://github.com/user-attachments/assets/a7c83b26-265a-4fe0-9d96-f027713319e1)
+ Sau khi tiến hành thiết lập xong thì lưu bằng Ctrl + S.
## Làm các bảng khác cũng tương tự.
+ Bảng LopSV
  + MaLop:
    ![image](https://github.com/user-attachments/assets/2431ac21-0c62-4f2d-bb38-646c7bfbb6df)
  + MaSV:
    ![image](https://github.com/user-attachments/assets/a8eeddf3-09db-481a-b515-5ceb27982aa8)

    ![image](https://github.com/user-attachments/assets/ec4d82bd-185c-4640-9c00-057b3e6c3f45)

+ Bảng GiaoVien
  + MaBM:
    ![image](https://github.com/user-attachments/assets/7f5f59d0-12a9-4668-8a57-eaa5d368fdf1)

    ![image](https://github.com/user-attachments/assets/7cd8b474-83d7-4272-86c9-cacac9c28533)
+ Bảng BoMon
  + MaBM:
    ![image](https://github.com/user-attachments/assets/bde11c71-30e0-44c9-9b69-089d3fd1742d)
  + MaKhoa:
    ![image](https://github.com/user-attachments/assets/97623276-d079-4587-90eb-f281b2c0007a)
+ Bảng Khoa
  ![image](https://github.com/user-attachments/assets/78725df6-9f3a-4bd1-ad95-13990d9e77c8)
+ Bảng MonHoc
  + MaMon:
    ![image](https://github.com/user-attachments/assets/856b67d3-2c3d-44ff-802e-a3a2975f0bbf)
  + STC:
    ![image](https://github.com/user-attachments/assets/39849a94-9a44-4f0f-aa46-d55875aa55df)
+ Bảng LopHP
  + MaLopHP:
    ![image](https://github.com/user-attachments/assets/d727da39-1fad-4e8f-9b90-f3ca3e82367a)
  + MaGV:
    ![image](https://github.com/user-attachments/assets/8cf4a3a2-134f-4946-b8a2-60b1ceb36a35)
  + HK:
    ![image](https://github.com/user-attachments/assets/16a55637-5dd1-43f6-a8c7-2dfac7d3124c)
+ Bảng DKMH
    ![image](https://github.com/user-attachments/assets/283f3b46-d6aa-4495-bc75-60af7f7e4cd4)
  + MaLopHP:
    ![image](https://github.com/user-attachments/assets/49705fd9-fe01-4cad-b67d-5f72e2db0ad0)
  + MaSV:
    ![image](https://github.com/user-attachments/assets/b15e0568-4e37-412f-8935-b82657f3609b)
  + DiemTP:
    ![image](https://github.com/user-attachments/assets/40cb5030-f9e0-46bb-9098-a2ebccc6318e)
  + DiemThi:
    ![image](https://github.com/user-attachments/assets/2458287b-bbc2-454f-935d-e7cdf1e023e4)
  + PhanTramThi:
    ![image](https://github.com/user-attachments/assets/35cbbe92-5bc0-434c-915d-250d3658b709)

# II. Chuyển các thao tác đồ hoạ trên thành lệnh SQL tương đương. lưu tất cả các lệnh SQL trong file: Script_DML.sql
+ Theo Thứ tự click chuột phải vào BAITAP2 -> Chọn Tasks -> Generate Scripts
   ![image](https://github.com/user-attachments/assets/16a26c2f-1cd2-4abd-b1cb-ab5d81cd7be9)
+ Sẽ xuất hiện giao diện Introduction
   ![image](https://github.com/user-attachments/assets/55f33dbc-46d1-4822-8ab1-73f0f5dbfa7d)
+ Giao diện Choose Objects
   ![image](https://github.com/user-attachments/assets/748e5d18-2d91-402a-9999-e56e2c2dedc4)
+ Set Scripting Options
   ![image](https://github.com/user-attachments/assets/46ce90be-2f91-4991-9ce3-95f00b4758df)

   ![image](https://github.com/user-attachments/assets/f5b1a847-86b8-4aa7-ba1e-e9b563c8af14)
+ Summary
  ![image](https://github.com/user-attachments/assets/cf5e4205-66b8-4f74-9c11-c58512c014ba)
+ Save Scripts
  ![image](https://github.com/user-attachments/assets/76f59cb0-e72d-43d5-9e68-9645f4e74a47)
## Hoàn thành

![image](https://github.com/user-attachments/assets/fe972c9d-e805-4ed2-9c38-e54674ccdd44)

+ View Code:
  ![image](https://github.com/user-attachments/assets/e7754745-f9c7-422e-9960-41a6e3fa74b9)

  ![image](https://github.com/user-attachments/assets/64e8bc32-86eb-47da-8e66-21d443ee7f5a)

  ![image](https://github.com/user-attachments/assets/623dbf5c-f7f3-48ac-b9ec-46497d9dc4d1)

  ![image](https://github.com/user-attachments/assets/d75f180c-91b9-40fd-be14-0c868cf5dd54)

  ![image](https://github.com/user-attachments/assets/04e8ced8-35f8-4ffa-a949-ebf968c124d9)

  ![image](https://github.com/user-attachments/assets/1f006607-8c8e-4d5e-ac25-8b0a4b5031e6)

  ![image](https://github.com/user-attachments/assets/0fa25fe1-c0c8-482b-b154-6571c7aac493)
























    








































