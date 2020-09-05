# Block thì đc mô ta bằng do end hoặc {}

3.times { |i| p i }
3.times do |i|
  p i
end

# Block di với yeid để ném code ra

def yeild_and_block
  p ' 1 '
  yield # thực thi đoạn code của block truyền vào
  p '2'
  yield
  p '3'
  yield
end

yeild_and_block do
  p ' code tron yield'
  p ' code thu 2 trong yield'
end

# function()  ko dc có dấu cách giưuax tên và dấu ()
def calculate
  yield(1, 2)
end

calculate { |a, b| p a + b }
# calculate #exception vi ko co block given

def calculate2
  if block_given?
    yield(1, 2)
  else
    p 'noblock'
  end
end

calculate2
