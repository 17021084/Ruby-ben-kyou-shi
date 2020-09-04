array = [1,2,3,4,5,6]


puts array[6]

# The procces like java
begin
    # array[6]    #= nil so it dont have err
    # array['dog']
    puts 3/0

rescue => exception
    puts exception
rescue ZeroDivisionError => mathErr
    puts mathErr
ensure
    puts 'ensure code block'
end