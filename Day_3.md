##Cơ sở về Ruby
##Tìm hiểu về String
+String là chuỗi kí tự được biểu diễn trong dấu nháy đơn hoặc dấu nháy kép
##kí tự thoát:
\n:xuống dòng
\r:đưa dấu nháy màn hình về đầu dòng
\t:cách nhau bởi một dấu tab
\b:xóa kí tự đứng trước nó
##Lấy từng phần tử của String
+ví dụ : String s =“learning Ruby”
puts s[“Ruby”]: lấy phần tử chứa từ Ruby
puts s[2] : lấy phần tử tại vị trí thứ 2
puts s[0,3]: lấy vị trí phần tử thứ 0 đến vị trí phần tử thứ 3
puts s[0…9] : lấy chuỗi kí tự từ 0 đến 9
##Truyền biến vào chuỗi
có thể truyền một biến khác vào một string .Biến được truyền vào có dạng :#{name}
ví dụ:
name =“Minh”
age= “22”
puts “#{name} is #{age} years old”
##nối chuỗi :
lang = “i “+“learning”+“Ruby”
lang =“i” “learning” “Ruby”
lang =“i”<<“learning”<<“Ruby”
##so sánh chuỗi
có thể dùng toán tử :== , eql?,<>.Trong đó == và eql trả về true nếu 2 chuỗi giống nhau và false nếu 2 chuỗi không giống nhau. Còn <> trả về 1,0,-1
.ví dụ :
a<>b = 1 có nghĩa là độ dài chuỗi a lớn hơn chuỗi b
a<>b = 0 có nghĩa là hai chuỗi độ dài bằng nhau
a<==>b =-1 có nghĩa là độ dài chuỗi a bé hơn chuỗi b
+phương thức size,length lấy độ dài chuỗi .
Ví dụ như :
s =“i learning Ruby”
s.size =15
s.length =15
##Các phương thức trong String
+ lang.include ? “Ruby”: kiểm tra Ruby có trong chuỗi lang không
+lang.empty?:kiểm tra chuỗi có rỗng hay không
+lang.clear:xóa chuỗi
+lang.upcase:chuyển toàn bộ string thành in hoa
+lang.downcase:chuyển thành in thường
+lang.capitalize:viết hoa chữ cái đầu trong string
+lang.swapcase:chuyển hoa thành thường và ngược lại
+lang.start_with? " learning”:kiểm tra xem chuỗi “learning” có bắt đầu chuỗi lang hay không ?
+lang.end_with? “learning”:kiểm tra xem chuỗi “learning” có nằm cuối chuỗi lang hay không ?
##Định dạng chuỗi
%d:hiển thị số nguyên
%f:hiển thị số chấm động
%s:hiển thị chuỗi
ví dụ :
puts “this is cost %d đô la” % 30
puts “there are %d oranges and %d apples in the basket .” %[12,10]
puts “speed %f km/h” %62.7
puts “this is %s” %“i phone 6”
Ngoài ra còn có :
%d :là hệ 10
%x:hệ 16
%0:hệ 8
%b:hệ nhị phân
%e: kiểu mũ
%.5d:sẽ hiển thị 5 chữ số thập phân ở cuối.
##Tìm hiểu về Array
##Duyệt array:
arr=[1,2,3,4,5]
arr.each do |num|
puts num
end
##Khởi tạo mảng
Mảng là 1 đối tượng , có thể dùng tự khóa new tự tạo mảng
arr = Array.new: tạo 1 mảng rổng
arr = Array.new 3 :tạo mảng có 3 phần tử có giá trị nil
arr = Array.new 6,“coin”:tạo mảng có 6 phần tử có giá trị là coin
arr = Array.new [11]:tạo một mảng có phần tử 11
arr = [a1,a2,a3,a4].inspect:trả về một chuỗi mô tả các phần tử trong mảng
mỗi phần tử trong 1 mảng có thể gồm nhiều kiểu dữ liệu khác nhau
ví dụ về mảng lồng nhau
arr =[1,2,3,[2,4,[11,12]]]
arr.length =4:trả về số phần tử của mảng
arr[0] =1.arr[1]=2:lấy phẩn tử tại vị trí 0,1
arr[3][1]: lấy phần tử 4 trong mảng
arr[3][2][1]:lấy phânf tử 11 trong mảng
arr.flatten!.inspect:lấy phần tử mảng con nhập vào mảng cha và tạo ra một mảng mới
có thể khởi tạo mảng theo cachs:
alpha = %w{a b c d e f g h}
##Xuất mảng ra màn hình :
có nhiều cách để xuất mảng .
Ví duj :
arr =[1,2,3,4,5]
puts arr
puts arr.inspect
arr.each do |e|
puts e
end
##Truy xuất các phần tử mảng:
alpha = %w{a b c d e f g h}
alpha.first=a lấy phần tử đầu tiên của mảng
alpha.last:h lấy phần tử cuối cùng của mảng
alpha[0]:lấy phần tử vị trí 0
alpha[-1]:dấu “-” để lấy phần tử cuối mảng
alpha[0,3].inspect:lấy phần tử vị trí 0 đến vị trí 3
alpha[i…n]:lấy phần tử vị trí i đến vị trí n
alpha[i…n]:lấy phần tử i đến vị trí n-1
alpha.values_at(1 … 5).inspect:lấy phần tử vị trí 1 đến vị trí 5
alpha.values_at(1,3,5).inspect : lấy phần tử vị trí 1,3,5
alpha.slice(0):lấy phần tử vị trí thứ 0
alpha.slice(0,3).inspect:lấy vị trí phần tử 0 dến 3
alpha.slice(2…6).inspect:lấy phần tử vị trí 0 đến phần tử vị trí 6
alpha.slice(2…6).inspect:lấy phần tử 0 đến phần tử 5
alpha.sample():xuất ra 1 phần tử ngẫu nhiên
alpha.sample():xuất ra 3 phần tử ngẫu nhiên
## Một số thao tác trên mảng
Nối 2 mảng a và mảng b dùng :a+ b hoặc a concat b
a eql? b:so sánh mảng a vaf mảng b
a.clear:xóa mảng
a.empty:mảng có rỗng hay không
a.reverser!:đảo mảng(khi sử dụng phương thức mảng mà thay đổi vị trí trong mảng phải có dấu !)
a.index 2 : trả về chỉ số phần tử 2 ở vị trí đầu tiên
a.rindex 2:trả về chỉ số phần tử 2 ở vị trí cuối cùng
a.include ?3 kiểm tra xem phần tử 3 có trong mảng không
a.join”-":tạo ra chuỗi string có các phần tử cách nhau dấu “-”
a.uniq!.inspect:loại bỏ phần tử có giá trị giống nhau
#Thêm bớt phần tử
alpha.insert 0, E, F:thêm phần tử E và F vào vị trí 0
alpha.pust F:thêm phần tử F vào mảng alpha
alpha << ‘L’ <<‘M’:thêm phần tử L,M vào mảng alpha
alpha.unshift ‘A’,‘B’,‘C’:thêm 3 phần tử A,B,C vào vị trí đầu mảng
alpha.insert(3,‘D’):thêm phần tử ‘D’ vào vị trí 3
alpha.pop :xóa phần tử ra khỏi mảng
alpha.shift:xóa phần tử đầu tiên của mảng
delete_at(i):xóa phần tử ở vị trí thứ i
alpha.clear:xóa toàn bộ mảng
alpha.delete(‘d’):xóa phần tử ‘d’ trong mảng
Toán tử tập hợp
union = A|B:thực hiện phép hợp phần tử nào cũng lấy
isect = A&B:thực hiện phép giao , chỉ có phần tử thuộc 2 mảng mới lấy
diff1 = A -B: thực hiện phép hiệu ,lấy phần tử của A , lấy phần tử của B mà cũng thuộc A

##Sắp xếp mảng
arr.sort: sắp xếp phần tử từ bé đến lớn ,hoặc theo thứ tự bảng chữ cái
arr.reverser:sắp xếp theo chiều ngược lại
arr.shuffle :xáo trộn mảng 1 cách ngẫu nhiên
##Tìm hiểu Block,Proc,Lambda trong Ruby
#Block
là một khối mã bên trng {} hoặc do-end
Mọi thứ Ruby đều là Object trừ block
ví duj: [1, 2, 3, 4].each {|x| puts x }
#Proc
chính là block được đặt tên
ví duj :
p = Proc.new {|x| puts x}

#Lambda
Lambda tạm dịch là hàm nặc danh.
Lambda là function được gọi từ bên trong function, và những gì lambda làm hoàn toàn độc lập với fucntion gọi nó. Vì thế hoạt động của nó giống như một global function.
ví dụ :lambda = lambda { |x| x + 1 }
có thể kí hiệu lambda thành dấu “->”
#So sánh Proc , lambda ,block

Procs và Lambdas đều là closure trong ruby.

Là những phương pháp nhóm gộp các mã ruby lại để thực thi.

Blocks không phải đối tượng, còn Procs và Lambdas thì có.

Procs có hành vi giống với block còn Lambdas thì giống phương thức
## so sánh Blocks và Procs
Procs là đối tượng còn Blocks thì không.
Tối đa một Block có thể xuất hiện trong một danh sách đối số của phương thức. Ngược lại, như một sự hiển nhiên có thể truyền nhiều tham số proc đến các phương thức bởi vì:
proc là đối tượng conf Blocks thì không
so sánh Proc và lambda
cách xử lý tham số truyền vào :
Không giống Procs thông thường, nếu truyền sai các tham số khi gọi lambda, sẽ sinh ra ngoại lệ , trong khi đó việc gọi một proc mà không truyền tham số thì mặc định tham số đó là nil
Lúc này lambda sẽ báo lỗi :ArgumentError còn Proc sẽ sinh ra giá trị nil
cách trả về return:
Lambda sẽ trả về giá trị của bản thân nó, trong khi Proc chỉ trả về cho ngữ cảnh hiện tại.

  -
