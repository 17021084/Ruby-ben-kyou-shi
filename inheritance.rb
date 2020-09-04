class Person
  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    puts "hello i am #{@name}   , now i am  #{@age.to_s} years old"
  end

  def working
    puts ' work harder '
  end

  def say(_sth)
    puts 'say sth'
  end
end

class Student < Person
  def initialize(name, age ,school)
    super(name, age)
    @school = school
  end

  # override
  def working
    puts 'learning somthing '
  end
  # viet de len luon ko cung ham khac tham so 
  def say(sth, sb)
    puts " say #{sth} to #{sb} "
  end
end

std1 = Student.new('Trung',12,22)

std1.introduce
std1.say('override','ruby')
std1.working


