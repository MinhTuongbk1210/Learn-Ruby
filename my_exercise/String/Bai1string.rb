def soDongInRa()
    print "nhap so dong in ra:"
     a = gets.chomp.to_i
    
end
def multiple(a="a")
    for i in 1..soDongInRa
        for j in 1..i
            print a
        end
        puts 
    end
end
multiple

