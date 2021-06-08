Hướng dẫn setup trên localhost XAMPP:
	B1: Giải nén code vào thư mục htdocs trong thư mục cài XAMPP.
	B2: Mở phpmyadmin theo đừng dẫn http://localhost/phpmyadmin. Khởi tạo một database và cập nhật nội dung từ file demo_db.sql.
	B3: Mở file .env từ thư mục lưu code và sửa DB_DATABASE, DB_USERNAME, DB_PASSWORD tương ứng với database đã tạo.
Sau khi setup xong thì mở cmd tại thư mục lưu code và chạy lệnh "php artisan serve".Đường dẫn web mặc định là: http://localhost:8000/