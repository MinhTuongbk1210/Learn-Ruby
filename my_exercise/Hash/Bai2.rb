s = "in kaka only only in come free only"
 a  = s.split(" ")
 hash =Hash.new
 count =1
 x = a[0]
 for i in 0..a.length-1 do
    #  for j in i+1..a.length do
    #     if(i!=0 && a[i]==a[0])
    #         break
    #     end
         if hash.has_key?(a[i]) == false  #a[i]==a[j]
            count=count+1
            hash[a.at(i)] = 1
         else
             hash[a[i]] += 1
         end
    #  end
    #  count =1
    
 end
 print hash
 