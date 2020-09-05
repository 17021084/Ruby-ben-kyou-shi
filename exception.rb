def retry_to_call(retry_times, &block)
  block.call
rescue Exception => e
  if retry_times > 0
    p 'gặp Ngoại lệ và retry lần: ' + retry_times.to_s
    retry_times -= 1
    retry
  else
    p 'Hết số lần retry!'
    # raise e
  end
else
    p 'đoạn code naỳ chạy khi ko co bat ki ngoại lệ nào xảy ra '  
ensure
  p 'Code cuoi cung luon thuc thi'
end

retry_to_call(3) do
  file = open('file_name`.txt')
  puts 'File opened successfully' if file
end

module NgoaiLe
  class TenKhongTonTai < StandardError; end
end
begin
  name = nil
  raise NgoaiLe::TenKhongTonTai, 'Tên không tồn tại ' if name.nil?
rescue Exception => e
  puts e.inspect
end


