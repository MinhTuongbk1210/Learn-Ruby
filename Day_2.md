##Cơ sở về Ruby
-Tài liệu được tham khảo về Ruby tại trang web https://phocode.com/ruby/ruby-lap-trinh-ruby/

Ruby là ngôn ngữ hướng đối tượng , được một lập trình viên người Nhật ukihiro Matsumoto tạo ra năm 1995
Trong Ruby có tối thiểu 5 loại bieens:
+$ biến :global ->được khai báo bên ngoài tất cả các hàm có tác dụng trong toàn bộ class
+@biến:instance ->thuộc về đối tượng
+@@ biến:class->thuộc về class
+constant:hằng số (trong Ruby có thể thay đổi được và hiện ra warning)
+bienes:local->có tác dụng ở trong một hàm ,class,method
một class được tạo ra gọi là class method
một phương thức được gọi từ đối tượng của class gọi là instance method
trong extend thể hiện class method
trong include thể hiện instance method
setter dùng để nhập giá trị ,getter dùng để lấy giá trị ,
-Ruby có hỗ trợ 2 commnet là comment trên một dòng dùng #, còn comment trên nhiều dòng dùng
=begin và =end
Để khởi tạo một phương thức dùng initialize
Để tạo một đối tượng dùng tên tên biến =kiểu dữ liệu.new(“giá trị”)
Ruby hỗ trợ một số kiểu dữ lieuej:
Boolean – kiểu luận lý
Symbol
Number – số
String – chuỗi kí tự
Array – mảng
Hashe – bảng băm

