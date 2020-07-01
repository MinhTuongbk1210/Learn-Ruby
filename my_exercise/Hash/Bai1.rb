arr =["a",1,"b",2,"c",3,"d",4]
hash = Hash.new
i =0
while i<arr.length do 
hash[arr[i]]=arr[i+1]
i=i+2
end
puts hash