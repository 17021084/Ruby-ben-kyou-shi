File.open('./test.txt', 'r') do |cusor|
  # read all
  # puts cusor.read()

  # Read single line
  puts cusor.readline
  puts cusor.readline

  # cursor now is in line 3
  # Read all single line and put it in to array
  puts cusor.readlines[1]

  cusor.readlines.each do |line|
    puts line
  end
end
puts '=========================='

section = File.open('./test.txt', 'r')
contents= section.readlines
puts contents
section.close


##### Write file 
puts 'write file=============================='

File.open('./clone text.txt' , 'w') do |cusor|
    contents.each do |content|
        cusor.write(content+'\n')
    end
end



