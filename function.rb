def greeting
  'unless return key work DEF will return value in the end of code block '

  'return cai nay'
end

puts greeting

def divided(a, b)
  return 'error' if b == 0

  a / b
end

puts divided(2, 0)
puts divided(2, 2)

# default value
def aishatsu(name = 'unknown', age = nil)
  puts('Konichiwa' + name.to_s + ' you are ' + age.to_s)
end
aishatsu

# return array

def returnArray(num)
  [num, 'senconstring']
end

puts returnArray(2)[1]
