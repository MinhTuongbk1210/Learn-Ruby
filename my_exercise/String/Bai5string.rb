$count = 1
def ngauNhien()
    x =rand(1..100)
end
$k = ngauNhien
puts $k
def inRa()

    if($count<= $k )
        puts $count
        $count+=1
        inRa()
    end
end
inRa

