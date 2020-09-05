# static method
class A
  @@static_var = 0
  def initialize
    @@static_var+=1
  end

    def self.greeting
    p 'this is static method'
  end

  def self.increase
    @@static_var += 1
  end

  def self.static_var
    @@static_var
  end
end

A.greeting
# 3.times {A.increase}
3.times {A.new}
p A.static_var
