# Thành viên
- Huỳnh Như:

Leader
  
Phân tích nghiệp vụ
  
Lập trình Frontend
  
Hỗ trợ thiết kế Database 
  
Nội dung báo cáo
- Anh Tân:

Lập trình Backend
          
Thiết kế Database
          
Nội dung báo cáo
# Phân tích nghiệp vụ

## 1. Tổng quan yêu cầu nghiệp vụ
### 1.1	Yêu cầu khách vãng lai
- Khách vãng lai (Guests) là những người dùng chưa thực hiện đăng nhập hoặc xác thực vào hệ thống. Họ chỉ được cấp quyền truy cập hạn chế vào một số chức năng, bao gồm:

Đăng ký tài khoản mới

Tìm kiếm và xem thông tin chi tiết về công việc

Tìm kiếm và xem thông tin chi tiết về doanh nghiệp
### 1.2	Yêu cầu nhà tuyển dụng – doanh nghiệp
- Thành viên (Members) là người dùng đã đăng nhập vào trang web tìm việc với vai trò "Doanh nghiệp" (Enterprise). Họ được cấp quyền sử dụng các chức năng sau:

Đăng nhập và đăng xuất khỏi hệ thống

Xem và theo dõi các thống kê hồ sơ

Cập nhật thông tin chi tiết của doanh nghiệp

Quản lý danh sách và thông tin các công việc đăng tuyển

Thực hiện các thao tác trong quy trình tuyển dụng
### 1.3 Yêu cầu ứng viên
- Thành viên (Members) là những người dùng đã đăng nhập vào hệ thống trang web tìm việc với vai trò "Ứng viên" (Candidate). Các chức năng họ có thể sử dụng bao gồm:

Thực hiện đăng nhập và đăng xuất khỏi hệ thống

Theo dõi thống kê hồ sơ cá nhân của họ

Cập nhật và chỉnh sửa hồ sơ ứng viên

Ứng tuyển vào các công việc phù hợp
### 1.4	Yêu cầu quản trị viên website
- Thành viên (Members) là những người đã đăng nhập vào hệ thống bảng điều khiển quản trị với vai trò "Quản trị viên" (Admin). Họ có quyền truy cập vào các chức năng sau:

Đăng nhập và đăng xuất tài khoản quản trị

Quản lý danh sách và thông tin của người dùng trong hệ thống

Quản lý danh sách công việc được đăng tuyển bởi các doanh nghiệp

Theo dõi và xem các thống kê toàn diện về hệ thống Grabwork

## 3. Biểu đồ ca sử dụng - Usecase Diagram
### 3.1 Website Admin
![image](https://github.com/user-attachments/assets/744fb28d-2383-4ff1-94d0-819324b9244f)

### 3.2 Website tìm việc và đăng tin
![image](https://github.com/user-attachments/assets/598b42ef-58fe-43be-8a24-130cea5aa168)



## 4. Tác nhân hệ thống
| STT     | Tác nhân                      | Mô tả                                                        |
| :------ | ------------------------------| -------------------------------------------------------------|
| 1       | Khách vãng lai                | Khách vãng lai là những người chưa đăng nhập vào hệ thống. Khách vãng lai sẽ xem các thông tin công khai hoặc nội dung giới thiệu của trang website.|
| 2       | Thành viên                    | Thành viên là những người đã có tài khoản và đã đăng nhập vào trang web tìm việc. Thành viên có thể ứng tuyển, hoặc đăng tin tuyển dụng.|
| 3       | Ứng viên                      | Ứng viên là những người đăng nhập vào trang web tìm việc với vai trò "ứng viên". Họ sẽ tìm kiếm, nộp đơn và tham gia phỏng vấn với các doanh nghiệp.|
| 4       | Nhà tuyển dụng - Doanh nghiệp | Doanh nghiệp là người đăng nhập vào trang web tìm việc với vai trò "doanh nghiệp". Họ sẽ quản lý bảng tin việc làm, đăng tuyển và gửi mail hẹn lịch phỏng vấn.|
| 5       | Quản trị viên                 | Quản trị viên là người đăng nhập vào trang quản trị hệ thống với vai trò "quản trị viên". Họ quản lý hoạt động của người dùng và giám sát sự phát triển của hệ thống Grabwork.|


## 5. Mô hình tổng quan sản phẩm
![image](https://github.com/user-attachments/assets/357be087-d9b5-4263-8c23-0611baaf791c)

## 6. Kiến trúc thông tin hệ thống - Information Architecture
### 6.1 Trang đăng tin và tìm việc 2
![image](https://github.com/user-attachments/assets/14556685-db40-4b54-b867-53921b9e5e4d)

### 6.2 Trang quản trị Admin website 
![image](https://github.com/user-attachments/assets/273e15c4-2898-490d-98a0-3aecc9155e4e)

## 7. Tổng quan chức năng hệ thống
### 7.1 Luồng của khách vãng lai 
![image](https://github.com/user-attachments/assets/de7e93a5-a535-4f9c-a1a5-288c239c63d2)

### 7.2 Luồng của ứng viên
![image](https://github.com/user-attachments/assets/c9f8ad61-c934-4a0f-8ef4-637b0f85a661)

### 7.3 Luồng doanh nghiệp 
![image](https://github.com/user-attachments/assets/61bd27df-84fa-44eb-9225-8e1ea74c638b)

### 7.4 Luồng quản trị viên
![image](https://github.com/user-attachments/assets/9fbb1ef7-02e2-43d0-b975-9464176d9d84)

## 8. Mô hình tổng quan kiến trúc hệ thống
![image](https://github.com/user-attachments/assets/32fda5d2-f37e-417b-9385-e45fb3364249)

## 9. Sơ đồ hoạt động - Activity Diagram 
### 9.1 Cập nhật thông tin công ty
![image](https://github.com/user-attachments/assets/13ae608a-c9dc-44ee-acce-498c01f18d71)

### 9.2 Đăng tin
![image](https://github.com/user-attachments/assets/5dd6f4bb-e052-4859-b0a5-f767ce5f6ed7)

### 9.3 Ứng viên cập nhật thông tin hồ sơ
![image](https://github.com/user-attachments/assets/64adcf12-21d6-4042-a91b-d66f39d44be5)

### 9.4 Ứng viên ứng tuyển
![image](https://github.com/user-attachments/assets/dc7592ba-b7a5-4a04-8f07-12618f9b9230)

### 9.5 Ứng viên đăng ký email nhận thông báo công việc phù hợp
![image](https://github.com/user-attachments/assets/7dcb16c1-5676-420a-bcff-88e26030e387)

### 9.6 Hệ thống gợi ý việc làm phù hợp
![image](https://github.com/user-attachments/assets/b58ff24e-e029-4f64-872f-db892e0e8236)



