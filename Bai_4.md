**Luồng điều khiển**
**Câu lệnh if:**
ví dụ :
if num>0 then
puts "giá trị num lớn hơn 0"
end
-Ta có thể dùng từ khóa else để thực thi một khối lệnh khác nếu biểu thức trong if là sai
ví dụ:if num>0
puts "giá trị num lớn hơn 0"
else  
puts "giá trị num bé hơn 0"
-Hoặc dùng từ khóa elsif để thực hiện kiểm tra nhiều biểu thức khác nhau
ví dụ : if num> 0
puts "giá trị num lớn hơn 0"
elsif num==0
puts "giá trị num bằng 0"
elsif num<0
puts "giá trị num bé hơn 0"
**câu lệnh điều kiện case**
case <biến> when <giá trị> else end
ví dụ:
print  "Enter a domain: "
domain = gets.chomp
case  domain
when  "us"
puts  "United States"
when  "de"
puts  "Germany"
when  "no"
puts  "Norway"
when  "hu"
puts  "Hungary"
else
puts  "Unknown"
end
***Câu lệnh while và unitl***
Câu lệnh  while cho phép một câu lệnh hoặc một khối lệnh được thực hiện lặp đi lặp lại nhiều lần trong điều kiện cho trước
ví dụ :
i = 0
sum = 0
while  i < 10
i = i + 1
sum = sum + i
end
puts  "Sum of 0..9 is #{sum}" 
từ khóa do có cũng được và không có cũng được
Câu lệnh until thì cũng có cấu trúc cú pháp giống như câu lệnh  while, chỉ khác là until sẽ thực hiện các câu lệnh nếu điều kiện sai  (false), nếu biểu thức sau  until trả về  true` thì dừng vòng lặp.
**#câu lệnh for**
ví dụ:
for i in 0..9 do
    puts "#{i}"
end
**phương thức each**
Mảng trong Ruby có phương thức each cho phép chúng ta duyệt qua mảng một cách dễ dàng.
ví dụ:
planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter",
"Saturn", "Uranus", "Neptune"]
planets.each  do |iter|
puts  iter
end
cặp từ khóa do ..end có thể thay bằng dấu {}
**câu lệnh breack , next**
Câu lệnh break có tác dụng kết thúc vòng lặp while, for hoặc case cho dù vòng lặp đó có chạy xong hay chưa.
ví dụ :
while true
    r = 1 + rand(30)
    print "#{r} "
    if r == 22
        break
    end
end
Câu lệnh next có tác dụng bỏ qua vòng lặp hiện tại và thực hiện vòng lặp tiếp theo, các câu lệnh sau từ khóa next sẽ không được thực thi.
ví dụ :
num = 0
 while num < 100
 num += 1
 if (num % 2 == 0)
  next
    end
    print "#{num} "
end   
