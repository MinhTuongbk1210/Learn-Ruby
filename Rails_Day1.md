# Mô hình MVC
Mô hình MVC được Trygve Reenskaug đề ra vào năm 1979, mô hình này chia ứng dụng làm 3 phần: model, view và controller. Là mô hình giúp ta có thể sử dụng lại code đã viết.
 Nó là một nguyên tắc để các lập trình viên viết theo mô hình MVC giúp cho ứng dụng dễ quản lí và bảo trì.
# Model   (ActiveRecord)
model sẽ chịu trách nhiệm duy trì dữ liệu của ứng dụng. Đôi khi dữ liệu này chỉ tồn tại trong một thời gian ngắn, đôi khi lại được lưu trữ lâu dài trong cơ sở dữ liệu. Ở đây model không đơn thuần chỉ là dữ liệu, ứng dụng sẽ buộc phải chạy theo các quy tắc đã áp đặt lên dữ liệu đó.
# View ( ActionView )
View sẽ chịu trách nhiệm tạo ra giao diện người dùng, và giao diện này sẽ dựa trên model.View sẽ lấy dữ liệu từ model và chuyển đổi thành giao diện hiển thị lên cho người dùng. Công việc của view là chỉ có hiển thị chứ không xử lý bất kỳ thao tác nào của người dùng. Một model có thể được truy cập bởi nhiều view.
# Controller (ActionView)
sẽ chịu trách nhiệm vận hành ứng dụng. Controller sẽ nhận các sự kiện từ bên ngoài, thông thường là từ người dùng, sau đó tương tác với model và gọi view tương ứng để hiển thị.

# MVC trong Rails
Bất cứ ứng dụng Rails nào cũng có 3 phần model, view và controller. Việc kết nối giữa 3 thành phần này đã được Rails giải quyết tự động rồi, do đó ta chỉ cần quan tâm đến việc phát triển từng thành phần thôi.
Trong một ứng dụng Rails, một gói tin HTTP được gửi từ trình duyệt sẽ được chuyển tới các router trước tiên, đây là nơi vận chuyển các gói tin HTTP đến các phương thức nhất định (trong Rails thì phương thức hay hàm còn có tên khác là action). Phương thức đó sẽ đọc các dữ liệu có trong gói tin và có thể sẽ tương tác với model, hoặc gọi thêm các phương thức/action khác. Cuối cùng thì phương thức đầu tiên được gọi đó sẽ tính toán ra các dữ liệu khác rồi gửi cho một view nào đó để hiển thị cho người dùng.
## Ưu điểm của mô hình mvc
Các dự án có thể áp dụng ngay mô hình MVC mà không phụ thuộc môi trường, nền tảng xây dựng hay ngôn ngữ lập trình được sử dụng.
Có khả năng vận chuyển, phân chia các class/ function vào các thành phần riêng biệt Controller – Model – View, giúp cho việc xây dựng – phát triển – quản lý – vận hành và bảo trì một dự án dễ dàng hơn cũng như kiểm soát được các luồng xử lý và tạo ra các thành phần xử lý nghiệp vụ chuyên biệt hóa.
Tạo thành mô hình chuẩn cho nhiều dự án trong tương lai của doanh nghiệp. Nếu bạn nắm rõ mô hình MVC của một dự án nào đó, thì khi tiếp cận với một dự án khác mà bạn chưa từng biết hoặc tiếp xúc, nhưng nó lại được xây dựng với mô hình MVC thì sẽ không khó khăn gì.
Giúp các chuyên gia lập trình, nhà quản lý, nhà đầu tư, PM… có thể hiểu được dự án hoạt động ra sao hoặc giúp các lập trình viên dễ dàng quản lý – phát triển dự án. Nó không phải ngôn ngữ, nhưng khi họ cùng nhìn vào nó thì sẽ tự hiểu nó là gì, khi đó họ có thể trao đổi các yêu cầu và bàn bạc công việc.
Đây là một mô hình chuẩn, nó tối ưu nhất hiện nay so với nhiều mô hình khác và được sử dụng trong nhiều dự án và nhiều lĩnh vực, đặc biệt trong công nghệ sản xuất ứng dụng – phần mềm. Các lập trình viên sử dụng mô hình chuẩn MVC để có thể dễ dàng phân phối và chuyển giao công nghệ.
Đây là mô hình đơn giản, xử lý những nghiệp vụ đơn giản, và dễ dàng triển khai với các dự án nhỏ.
## Nhược điểm mô hình MVC
Chính việc chia hệ thống làm 3 phần và tương tác giữa mỗi phần với nhau khiến MVC quá cồng kềnh cho những phần mềm nhỏ gọn. Trong đó, lớp Controller cần duy trì một số lượng code lớn để vừa ghi nhận user request vừa quyết định phương thức xử lý chúng, cũng như nhiều tác vụ khác.
Các team ít người, các lập trình viên độc lập (indie) gặp nhiều khó khăn trong việc phát triển và bảo trì một hệ thống MVC.
Sự hỗ trợ cho quá trình kiểm thử của MVC cũng không quá tốt. Lý do là bởi lớp View phụ thuộc vào cả Model lẫn Controller. Chỉ một mình View không thể xử lý bất cứ vấn đề gì – không thể nhận request cũng không có dữ liệu để hiển thị. Vì vậy, khi kiểm tra phần View, bạn cần giả lập cả 2 thành phần còn lại để có được một hệ thống hoàn chỉnh.
Ngoài ra, trong cách hoạt động của mô hình MVC cũng có nhiều bất cập, cụ thể là phân chia công việc không đồng đều. Phần Controller và Model thực hiện quá nhiều tác vụ, đặc biệt là Model. Trong khi View chỉ chứa các mẫu hiển thị, thì Model xử lý mọi user request do Controller gửi đến và lo liệu cả UI logic cho lớp View.
Mô hình MVC thiết kế mất cân bằng khiến Model dễ gặp lỗi hơn, phát triển khó hơn và sửa chữa, bảo trì rắc rối hơn. Những lập trình viên lo phần Model sẽ phải làm việc vất vả, cũng như cần chuyên môn và sự tỉ mỉ lớn hơn.

# Quy trình hoạt động theo mô hình MVC

1.  Người dùng sử dụng một BROWSER trình duyệt web bất kỳ (Firefox, Chrome, IE,…) để có thể gửi những yêu cầu (HTTP Request) có thể kèm theo những dữ liệu nhập tới những CONTROLLER xử lý tương ứng. Việc xác định Controller xử lý sẽ dựa vào một bộ Routing điều hướng.
2.  Khi CONTROLLER nhận được yêu cầu gửi tới, nó sẽ chịu trách nhiệm kiểm tra yêu cầu đó có cần dữ liệu từ MODEL hay không? Nếu có, nó sẽ sử dụng các class/function cần thiết trong MODEL và nó sẽ trả ra kết quả( Resulting Arrays), khi đó CONTROLLER sẽ xử lý giássss trị đó và trả ra VIEW để hiển thị. CONTROLLER sẽ xác định các VIEW tương ứng để hiển thị đúng với yêu cầu.
3.  Khi nhận được dữ liệu từ CONTROLLER, VIEW sẽ chịu trách nhiệm xây dựng các thành phẩn hiển thị như hình ảnh, thông tin dữ liệu… và trả về GUI Content để CONTROLLER đưa ra kết quả lên màn hình BROWSER.
4.  BROWSER sẽ nhận giá trị trả về( HTTP Response) và sẽ hiển thị với người dùng. Kết thúc một quy trình hoạt động.

