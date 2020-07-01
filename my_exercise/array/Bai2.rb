arr1 =[1,2,3,4,5]
arr2 =Array.new
count  = arr1.length-1
while count>=0 do
    arr2.push arr1[count]
    count =count - 1
end
print arr2
