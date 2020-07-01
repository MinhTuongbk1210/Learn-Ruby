puts "nhập một đoạn văn:"
s = gets.chomp.to_s
timex  =  Time.now.strftime("%Y%m%d_%H%M%S")
name =timex+".txt"
puts name
file = File.new(name,"w+")
file.puts(s)
r = File.read(name)
puts r
file.close