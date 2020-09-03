test = 1
while test < 20
  # next if test.even?
  break if test == 13

  print test
  test += 1
end

(1..20).each do |i|
  next if i.even?

  puts "Value of local variable is #{i}"
end

# puts test+=1
iter = 1

loop do
  puts iter
  iter += 1
  break if iter == 20
end

(0..10).each do |num|
  next if num.even?

  print num
end

# puts num . num la bien dia phuong  trong caci block kia nen ko the truy cap dc

# fancy handler
['asd', 2312, 'dasd', 2].each do |element|
  print element
end

# lob 6 times

puts ' Times'
# i will increase 
6.times do |i|
  print i
end

7.times do
  puts 'suts'
end

#pow function

=begin
comment day =))
=end


def pow (base_num , pow_num)
  results=1
  pow_num.times do 
    results*=base_num
  end 
  results
end
puts pow(2,4)
