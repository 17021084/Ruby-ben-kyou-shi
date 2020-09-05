#     1. @ biến của ínstance
#     2, @@ biến của class . static trong java
#     3. def.ten  là biến class
#
#     4  attr_ 3 cái tạo getter setter và tạo cả 2
#     5. tất cả method mặc định là public
#     6. phải có cở private hay protect thì các method ở dưới  sẽ khác
#
class Person
  attr_accessor :name, :age # tạo cả getter và setter
  #   attr_reader :name # tạo method read(getter)
  #   attr_writer :name # tạo method write(setter)
  def initialize(name, age)
    @name = name
    @age = age
  end

  private

  def salary
    puts ' i dont takl'
  end

  protected

  def your_ex
    p ' jana'
  end
end

class Student < Person
  def get_your_ex
    your_ex
  end
end

p1 = Person.new('trung', 23)

p2 = Student.new('trung', 23)

p2.get_your_ex
# error
# p p1.name
