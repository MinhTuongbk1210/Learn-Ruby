arr =[1,2,3,4,[1,2,3,4],5]
a = Array.new
s =  arr.join()
print s
puts 
for i in 0..s.length-1 do
    a.push s.slice(i).to_i
end
print a