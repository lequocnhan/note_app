📘 Notes App – Flutter + SQLite + Provider

Ứng dụng ghi chú đơn giản sử dụng Flutter, SQLite và Provider để lưu trữ dữ liệu cục bộ và quản lý trạng thái. Người dùng có thể tạo, xem, chỉnh sửa và xóa ghi chú, với dữ liệu được lưu vĩnh viễn trên thiết bị.

✨ Tính năng chính

📝 Tạo ghi chú với tiêu đề & nội dung

📄 Hiển thị danh sách ghi chú bằng ListView

✏️ Chỉnh sửa ghi chú

🗑️ Xóa ghi chú với hộp thoại xác nhận

🧠 State Management bằng Provider

💾 Lưu trữ cục bộ bằng SQLite (sqflite)

📂 Tự động tải lại danh sách khi thêm/xóa

⏱ Theo dõi thời gian tạo & cập nhật (timestamp)

🛠 Công nghệ sử dụng Công nghệ Vai trò Flutter UI / Logic Provider State Management SQLite (sqflite) Lưu trữ cục bộ path_provider Lấy đường dẫn DB Material Design Giao diện 📁 Cấu trúc thư mục lib/ ┣ database/ ┃ ┗ db_helper.dart ┣ models/ ┃ ┗ note.dart ┣ providers/ ┃ ┗ note_provider.dart ┣ screens/ ┃ ┣ home_page.dart ┃ ┗ note_editor_screen.dart ┣ widgets/ ┃ ┗ note_card.dart ┗ main.dart

🚀 Cách chạy ứng dụng ⚠️ LƯU Ý QUAN TRỌNG

Ứng dụng dùng SQLite, nên KHÔNG chạy được trên Flutter Web / Chrome.

Bạn chỉ có thể chạy:

✔ Android emulator ✔ iOS simulator ✔ Windows/Mac/Linux desktop

1️⃣ Cài đặt dependencies flutter pub get

2️⃣ Chạy ứng dụng (Android) flutter run

📸 Demo tính năng

Bấm nút + để thêm ghi chú mới

Nhập tiêu đề và nội dung

Bấm Save → ghi chú xuất hiện ngay trên Home

Bấm icon 🗑 để xóa ghi chú

📦 Gói cài đặt sử dụng dependencies: flutter: sdk: flutter sqflite: ^2.3.0 path_provider: ^2.1.0 provider: ^6.1.0 intl: ^0.18.0

<img width="568" height="1025" alt="image" src="https://github.com/user-attachments/assets/d128cfb0-8163-4c6f-aa46-6a44d5d48998" />

<img width="557" height="1020" alt="image" src="https://github.com/user-attachments/assets/741130b0-6ada-410a-9370-c361f2b10efa" />
<img width="549" height="1011" alt="image" src="https://github.com/user-attachments/assets/2b37ae22-1a01-44e1-8703-45946fa5bff5" />
<img width="566" height="1017" alt="image" src="https://github.com/user-attachments/assets/e8c94a14-ce99-4e53-8c77-56bfb625a6b8" />



