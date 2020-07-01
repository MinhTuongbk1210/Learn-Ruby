def infor(path ="/home/ubuntu3/Documents/learning ruby/Day_1.md")
    name_file =File.basename(path)
    puts("File name: #{name_file}")
    puts("Base name: #{name_file.sub(File.extname(path), '')}")
    puts("Extention:#{File.extname(path)}")
    puts("Path name: #{File.dirname(path)}")
end
infor
 
