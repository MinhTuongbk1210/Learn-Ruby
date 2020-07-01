s = "only only in come free"
 a  = s.split(" ")
 hash =Hash.new
 count =1
 x = a[0]
 for i in 0..a.length do
     for j in i+1..a.length do
        if(i!=0 && a[i]==a[0])
            break
        end
         if a[i]==a[j]
            count=count+1
            hash[a.at(i)]=count
         elsif a[i]!=a[j] 
             hash[a.at(i)]=count
         end
     end
     count =1
    
 end
 print hash
 