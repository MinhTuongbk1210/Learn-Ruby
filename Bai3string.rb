def person()
    puts "Hello Mr/Ms Firstname,Lastname"
    puts "Input firstName:"
    yield
end
    person do
        firstName = gets.chomp.to_s
        puts "Input lastName"
        lastName = gets.chomp.to_s 
        puts "Input gender Male/Female"
        gender = gets.chomp.to_s
        if "Male" == gender 
            puts "It is Mr"
        elsif "Female" == gender 
            puts "It is Ms"
        else
            puts "Gender is invalid"
        end
    end 
