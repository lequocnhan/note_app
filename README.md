📘 Notes App – Flutter + SQLite + Provider

Ứng dụng ghi chú đơn giản sử dụng Flutter, SQLite và Provider để lưu trữ dữ liệu cục bộ và quản lý trạng thái. Người dùng có thể tạo, xem, chỉnh sửa và xóa ghi chú, với dữ liệu được lưu vĩnh viễn trên thiết bị.

 Tính năng chính

 Tạo ghi chú với tiêu đề & nội dung

 Hiển thị danh sách ghi chú bằng ListView

 Chỉnh sửa ghi chú

 Xóa ghi chú với hộp thoại xác nhận

 State Management bằng Provider

 Lưu trữ cục bộ bằng SQLite (sqflite)

 Tự động tải lại danh sách khi thêm/xóa

⏱Theo dõi thời gian tạo & cập nhật (timestamp)

 Công nghệ sử dụng Công nghệ Vai trò Flutter UI / Logic Provider State Management SQLite (sqflite) Lưu trữ cục bộ path_provider Lấy đường dẫn DB Material Design Giao diện  Cấu trúc thư mục lib/ ┣ database/ ┃ ┗ db_helper.dart ┣ models/ ┃ ┗ note.dart ┣ providers/ ┃ ┗ note_provider.dart ┣ screens/ ┃ ┣ home_page.dart ┃ ┗ note_editor_screen.dart ┣ widgets/ ┃ ┗ note_card.dart ┗ main.dart

Cách chạy ứng dụng  LƯU Ý QUAN TRỌNG

Ứng dụng dùng SQLite, nên KHÔNG chạy được trên Flutter Web / Chrome.

Bạn chỉ có thể chạy:

✔ Android emulator ✔ iOS simulator ✔ Windows/Mac/Linux desktop

1️⃣ Cài đặt dependencies flutter pub get

2️⃣ Chạy ứng dụng (Android) flutter run

📸 Demo tính năng

Bấm nút + để thêm ghi chú mới

Nhập tiêu đề và nội dung

Bấm Save → ghi chú xuất hiện ngay trên Home

Bấm icon  để xóa ghi chú

 Gói cài đặt sử dụng dependencies: flutter: sdk: flutter sqflite: ^2.3.0 path_provider: ^2.1.0 provider: ^6.1.0 intl: ^0.18.0

<img width="364" height="816" alt="image" src="https://github.com/user-attachments/assets/7f6056a1-72fd-435d-bc0b-42d44b4254ce" />
<img width="366" height="852" alt="image" src="https://github.com/user-attachments/assets/44d527e6-7434-4f80-87c1-7ff7f0567866" />
<img width="366" height="800" alt="image" src="https://github.com/user-attachments/assets/421f6319-421a-4520-b4b4-02f12cea0498" />
<img width="363" height="816" alt="image" src="https://github.com/user-attachments/assets/4d0959a6-0a97-4514-b000-21d40cf389b8" />
<img width="366" height="818" alt="image" src="https://github.com/user-attachments/assets/a5eaa901-a45f-4e79-b976-97ddefc5bfd2" />







