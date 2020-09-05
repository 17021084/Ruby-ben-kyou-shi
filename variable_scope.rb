# global start with $ ,  $[a-z]
class A
  $var = 'Bien nay trong class A'
end

class B
  def say_hello
    puts " bien nay duoc goi tu class a #{$var} "
  end
end

b = B.new
b.say_hello

# Class variable  - static prop trong java
# @@[a-z] thang nay it duoc dung
class A
  @@so_instant_trong_A = 0
  def initialize
    # gan trong constutor
    self.class.so_instant_trong_A += 1
  end

  # tru cap ra ngoai
  def self.so_instant_trong_A
    @@so_instant_trong_A
  end

  def self.so_instant_trong_A=(value)
    @@so_instant_trong_A = value
  end
end

6.times { A.new }
p A.so_instant_trong_A

# local variable
# which is declared in method , loop

def test_local
  result = 1 + 2
  result.times do |x|
    puts a = x + 1
    p local_variables
  end
  p local_variables
end
