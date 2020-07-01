arr =["orange","banana","mango","apple","watermalon","lemon"]
puts "Nhập một chuỗi"
s = gets.chomp.to_s
check =false
for i in 0..arr.length-1 do
    if s ==arr.at(i)
        check = true 
        true
    end
end
if(check==true)
    puts "true"
elsif (check ==false)
    puts "false"
end
