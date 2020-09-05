class Person
    attr_accessor :name, :age, :sex 
end

person = Person.new
# create a array of concurrent thread 
thread =[]

# declare thread and add it in array. all code in block will not execuse
# time
start_thread = Time.now.to_i

thread<< Thread.new do 
    sleep(2)
    person.name= 'trung'
    p Thread.current
    p 'sleep 2'

end
thread<< Thread.new do 
    sleep(1)
    person.age=12
    #shortway
    p Thread.current
    Thread.kill(Thread.current)
    p 'sleep 1'
end
thread3 =Thread.new do 
    sleep(3)
    person.sex='female'
    
    # out khoi thread -longway
    Thread.kill(thread3)
    #log current running thread
    p Thread.current
    p 'sleep 3'
end
thread<<thread3
#===


# Execuse code  T
thread.each { |thr| thr.join }

end_thread=Time.now.to_i
p "time exec #{end_thread-start_thread}s and Person :#{person.name}  #{person.sex}  #{person.age}  "
