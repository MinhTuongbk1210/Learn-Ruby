## Git
  - git init: dùng để tạo 1  repository mới  
 - git add [tên file]:cập nhập file đã sữa đổi vào nhánh
 - git add . :cập nhập tất cả những file ở trong thư mục 
-  git commit -m " noi dung sua file ": mỗi lần thêm file ta cần commit file đó
-  git remote add origin https://github.com/MinhTuongbk1210/Learning_Ruby.git: Di chuyể local
   vào trong repository đã tạo trong lần đầu tiên tạo repository
      
-  git push -u origin master: đẩy dữ liệu đã tạo vào nhánh master

- 1 project ở trạng thái ban đầu là orginal , ở trạng thái unstage(đỏ) nếu dùng lệnh: git add. sẽ chuyển sang trạng thái stage(xanh) nếu dùng git commit -m chuyển sang trạng thái commited nếu dùng git push
   orgin [tên nhánh] thì sẽ lên github ở trạng thái commited muốn về trạng thái stage(xanh) thì dùng git reset HEAD^~,ở trạng thái stage sang trạng thái unstage thì dùng git
   reset [/file/folder] , nếu chuyển về trạng thái original thì dùng
   lệnh git checkout[/file/folder]
   
    git checkout - b[tên nhánh]:dùng để taoj nhánh lần đầu tiên
   
    git checkout:dùng để chuyển nhánh
   
    git merage [tên nhánh]:dùng để trộn nhánh , mong muốn sử dụng chung dữ liệu đến nhánh cần trộn
    
    Tìm hiểu sơ về RUby:sự hình thành ,biến,..
