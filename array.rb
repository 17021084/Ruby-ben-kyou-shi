friends = [1, 2, 3, 'asd', false,nil]
# tomdachi = Array['asd', 213, 23.22, 231, false, nil]
# puts friends
# puts tomdachi

puts friends[-3]
friends[3]=4
print friends

# fetch a element but un avalivble its will return nil
puts friends[friends.length+3]
puts friends[5] #nill

# create empty array

empty = [];
# empty = Array.new

print empty
empty[0]=1
empty[5]=false
empty.push("trung")

print empty # [1,nil,nil,nil,nil,false]
puts empty.include?"trung"


sort = [1,22,3,3,4,10,78,123,4]

increase = sort.sort
decrease = [3,2,1,5,2,1,2,53,1].sort{|x,y| y<=>x}

# sort se mutate array

puts" sort"
print sort
puts""
puts" increase " 
print increase
puts""
puts" decrease "
print decrease


# Slice - ko mutable
puts "slice method"

slide = [1,2,3,54,6,'23',232]

slide.slice(1..3)
print slide
puts "___"
print slide.slice(1..3)
puts "___"
print slide.slice(1,3)
