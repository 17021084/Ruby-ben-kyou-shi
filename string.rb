string1 = '    What can i cant do now ???   '
string2 = 'nai xu nai'

puts string1.strip  # like trim()
puts string1.upcase
puts string1.downcase
puts string1.length
puts string1.include? 'Can'

#print  range 
puts string2[1]
puts string2[1, 6]
# start from last indext of array
puts string2[-2]

puts string2.index("a")
puts string2.index("ai ")

