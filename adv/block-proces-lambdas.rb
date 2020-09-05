# Block thì đc mô ta bằng do end hoặc {}
# {} <=> do end

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

# lambdas va Proc
=begin
lambdas với procs đều là  Proc
=end
a = Proc.new{ p ' hello process'}
b = lambda { p ' hello lambdas'} 

# đều thuộc proc
p b.class
p a.class

# Kiểm tra param 
pro = Proc.new do |x|
  p x
end

lam = lambda do |x|
  p x
end

# tthiếu thì mặc định là nil
# 3 cách gọi 
pro.call() 
pro.()
pro[]

# thiếu thì báo lỗi
lam.call(2)
lam.call rescue ArgumentError 

##====================
p ' return ============================'
=begin
 
  Lambda: nếu return trong lambda, thì hàm vẫn chạy
  Proc : nếu return trong proc. thì hàm ngoài dừng luôn
 
=end
p ' retủrn trong lambda '

def method_lambda
  lam = lambda { return puts "xin chao" }
  lam.call
  puts "cac ban"
end

method_lambda

p ' return trung proc'

def method_proc
  prc = Proc.new { return puts "xin chao" }
  prc.call
  puts "cac ban"
end


method_proc